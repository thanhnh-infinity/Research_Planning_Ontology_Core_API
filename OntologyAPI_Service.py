import cherrypy
import OWLEngine
import json

def CORS():
    cherrypy.response.headers["Access-Control-Allow-Origin"] = "*"
    cherrypy.response.headers["Access-Control-Allow-Credentials"] = "true"
    cherrypy.response.headers["Access-Control-Allow-Methods"] = "GET,POST,PUT,DELETE,OPTIONS"
    cherrypy.response.headers["Access-Control-Allow-Headers"] = "X-Auth-Token,Content-Type,Accept"

def return_response_error(code, type, mess, format="JSON"):
    if (format == "JSON"):
        cherrypy.response.headers['Content-Type'] = "application/json"
        cherrypy.response.headers['Retry-After'] = 60
        cherrypy.response.status = code
        message = {type: mess}
        return json.dumps(message)
    else:
        return "Not support yet"
def return_success_get(data):
    cherrypy.response.headers['Content-Type'] = "application/json"
    cherrypy.response.headers['Retry-After'] = 60
    cherrypy.response.status = 200
    return json.dumps(data, indent=4)

def return_success_get_json(data):
    cherrypy.response.headers['Content-Type'] = "application/json"
    cherrypy.response.headers['Retry-After'] = 60
    cherrypy.response.status = 200
    return data
    
class OntologyAPI_Service(object):
    _cp_config = {
        'tools.sessions.on': True,
        'tools.sessions.httponly': True
    }
    def index(self):
        return "OntologyAPI_Service"
    def query(self, **request_data):
        try:
            request = str(request_data['request']).strip()
        except:
            return return_response_error(300, "error", "need provide request param", "JSON")
        
        if ((request is None) or (request == "")):
            return return_response_error(300, "error", "need provide request param", "JSON")

        #http://localhost:8080/query?request=get_all_instances_of_a_class&owlclass=phylotastic_resources&ontology=cdao_phylotastic    
        if (request.strip().upper() == "GET_ALL_INSTANCES_OF_A_CLASS"):
            try:
                owlclass = str(request_data['owlclass']).strip()
            except:
                return return_response_error(300, "error", "need provide owlclass param", "JSON")

            try:
                ontology = str(request_data['ontology']).strip()
            except:
                return return_response_error(300, "error", "need provide ontology param", "JSON")    

            message = OWLEngine.get_all_instances_of_a_directed_class(owlclass,ontology.strip().upper())
            return return_success_get_json(message)

        #http://localhost:8080/query?request=get_all_directed_subclass_of_a_class&owlclass=list_operation&ontology=phylo_methods    
        if (request.strip().upper() == "GET_ALL_DIRECTED_SUBCLASS_OF_A_CLASS"):
            try:
                owlclass = str(request_data['owlclass']).strip()
            except:
                return return_response_error(300, "error", "need provide owlclass param", "JSON")

            try:
                ontology = str(request_data['ontology']).strip()
            except:
                return return_response_error(300, "error", "need provide ontology param", "JSON")    
                
            message = OWLEngine.get_all_directed_subclass_of_class(owlclass,ontology.strip().upper())
            return return_success_get_json(message)

        #http://localhost:8080/query?request=get_hierarchy_subclasses_of_a_class&owlclass=operationClassification&ontology=phylo_methods
        if (request.strip().upper() == "GET_HIERARCHY_SUBCLASSES_OF_A_CLASS"):
            try:
                owlclass = str(request_data['owlclass']).strip()
            except:
                return return_response_error(300, "error", "need provide owlclass param", "JSON")

            try:
                ontology = str(request_data['ontology']).strip()
            except:
                return return_response_error(300, "error", "need provide ontology param", "JSON")    
                
            message = OWLEngine.get_hierarchy_subclasses_of_class(owlclass,ontology.strip().upper())
            return return_success_get_json(message)
        
        #http://localhost:8080/query?request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name=phylotastic_FindScientificNamesFromFreeText_GNRD_GET&ontology=cdao_phylotastic
        #http://localhost:8080/query?request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23phylotastic_GetPhylogeneticTree_OT_POST
        if (request.strip().upper() == "GET_DETAIL_INFORMATION_OF_A_OPERATION"):
            try:
                parser_engine = str(request_data['parser_engine']).strip()
            except:
                parser_engine = "1"
            
            if ((parser_engine == 2) or (parser_engine == "2")):
                    try:
                        owl_operaion_name = str(request_data['owl_operation_name']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_operation_name param", "JSON")
                   
                    try:
                        ontology = str(request_data['ontology']).strip()
                    except:
                        return return_response_error(300, "error", "need provide ontology param", "JSON") 
                        
                    message = OWLEngine.get_detail_information_of_operation_engine_2(owl_operaion_name,ontology.strip().upper())
                    return return_success_get_json(message) 
            elif ((parser_engine == 1) or (parser_engine == "1")):
                    try:
                        owl_operaion_uri = str(request_data['owl_operation_uri']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_operation_uri param - Replace hash symbol (#) by %23", "JSON")   
                    
                    message = OWLEngine.get_detail_information_of_operation_engine_1(owl_operaion_uri)
                    return return_success_get_json(message) 
    # Public /index
    index.exposed = True
    # public /query
    query.exposed = True
if __name__ == '__main__':
    cherrypy.tools.CORS = cherrypy.Tool("before_finalize", CORS)
    # Configure Server
    cherrypy.config.update({'server.socket_host': '0.0.0.0',
                            'server.socket_port': 8000
                            })
    conf = {
        '/': {
            'tools.CORS.on': True
        }
    }   
    # Starting Server
    cherrypy.quickstart(OntologyAPI_Service(), "/", conf)
    # cherrypy.engine.start()