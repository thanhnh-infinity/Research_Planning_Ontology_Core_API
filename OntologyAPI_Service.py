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

        #http://localhost:8000/query?request=get_all_instances_of_a_class&parser_engine=2&owlclass=phylotastic_resources&ontology=cdao_phylotastic    
        #http://localhost:8000/query?request=get_all_instances_of_a_class&parser_engine=1&owlclass_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23tree_generation
        if (request.strip().upper() == "GET_ALL_INSTANCES_OF_A_CLASS"):   
            try:
                parser_engine = str(request_data['parser_engine']).strip()
            except:
                parser_engine = "2"
            
            if ((parser_engine == 2) or (parser_engine == "2")):
                try:
                    owlclass = str(request_data['owlclass']).strip()
                except:
                    return return_response_error(300, "error", "need provide owlclass param", "JSON")

                try:
                    ontology = str(request_data['ontology']).strip()
                except:
                    return return_response_error(300, "error", "need provide ontology param", "JSON")    

                message = OWLEngine.get_all_instances_of_a_directed_class_engine_2(owlclass,ontology.strip().upper())
                return return_success_get_json(message)
            elif ((parser_engine == 1) or (parser_engine == "1")):
                try:
                    owl_class_uri = str(request_data['owl_class_uri']).strip()
                except:
                    return return_response_error(300, "error", "need provide owl_class_uri param - Replace hash symbol (#) by %23 ", "JSON")  

                message = OWLEngine.get_all_instances_of_a_directed_class_engine_1(owl_class_uri.strip())
                return return_success_get_json(message)

            

        #http://localhost:8000/query?request=get_all_directed_subclass_of_a_class&parser_engine=2&owlclass=list_operation&ontology=phylo_methods
        #http://localhost:8000/query?request=get_all_directed_subclass_of_a_class&parser_engine=1&owl_class_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23names_operation
        if (request.strip().upper() == "GET_ALL_DIRECTED_SUBCLASS_OF_A_CLASS"):
            
            try:
                parser_engine = str(request_data['parser_engine']).strip()
            except:
                parser_engine = "2"

            if ((parser_engine == 2) or (parser_engine == "2")):    
                try:
                    owlclass = str(request_data['owlclass']).strip()
                except:
                    return return_response_error(300, "error", "need provide owlclass param", "JSON")

                try:
                    ontology = str(request_data['ontology']).strip()
                except:
                    return return_response_error(300, "error", "need provide ontology param", "JSON")    
                    
                message = OWLEngine.get_all_directed_subclass_of_class_engine_2(owlclass,ontology.strip().upper())
                return return_success_get_json(message)
            elif ((parser_engine == 1) or (parser_engine == "1")):
                try:
                    owl_class_uri = str(request_data['owl_class_uri']).strip()
                except:
                    return return_response_error(300, "error", "need provide owl_class_uri param - Replace hash symbol (#) by %23 ", "JSON")  

                message = OWLEngine.get_all_directed_subclass_of_class_engine_1(owl_class_uri.strip())
                return return_success_get_json(message)

        #http://localhost:8000/query?request=get_hierarchy_subclasses_of_a_class&owl_class_uri=http://www.cs.nmsu.edu/~epontell/Ontologies/phylogenetic_methods.owl#operationClassification&level=0
        if (request.strip().upper() == "GET_HIERARCHY_SUBCLASSES_OF_A_CLASS"):
            try:
                owl_class_uri = str(request_data['owl_class_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_class_uri param", "JSON")

            try:
                level = str(request_data['level']).strip()
            except:
                level = "0"   
                
            message = OWLEngine.get_hierarchy_subclasses_of_class(owl_class_uri.strip(),level.strip())
            return return_success_get_json(message)
        
        #http://localhost:8000/query?request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name=phylotastic_FindScientificNamesFromFreeText_GNRD_GET&ontology=cdao_phylotastic
        #http://localhost:8000/query?request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23phylotastic_GetPhylogeneticTree_OT_POST
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
        

        #http://localhost:8000/query?request=get_detail_information_of_a_resource&parser_engine=2&owl_resource_name=free_text&ontology=cdao_phylotastic
        #http://localhost:8000/query?request=get_detail_information_of_a_resource&parser_engine=1&owl_resource_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa
        if (request.strip().upper() == "GET_DETAIL_INFORMATION_OF_A_RESOURCE"):
            try:
                parser_engine = str(request_data['parser_engine']).strip()
            except:
                parser_engine = "1"
            
            if ((parser_engine == 2) or (parser_engine == "2")):
                    try:
                        owl_resource_name = str(request_data['owl_resource_name']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_resource_name param", "JSON")
                   
                    try:
                        ontology = str(request_data['ontology']).strip()
                    except:
                        return return_response_error(300, "error", "need provide ontology param", "JSON") 
                        
                    message = OWLEngine.get_detail_information_of_resource_engine_2(owl_resource_name,ontology.strip().upper())
                    return return_success_get_json(message) 
            elif ((parser_engine == 1) or (parser_engine == "1")):
                    try:
                        owl_resource_uri = str(request_data['owl_resource_uri']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_resource_uri param - Replace hash symbol (#) by %23", "JSON")   
                    
                    message = OWLEngine.get_detail_information_of_resource_engine_1(owl_resource_uri)
                    return return_success_get_json(message)
        
        #http://localhost:8000/query?request=get_detail_information_of_a_component&parser_engine=2&owl_component_name=param_species&ontology=cdao_phylotastic
        #http://localhost:8000/query?request=get_detail_information_of_a_component&parser_engine=1&owl_component_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23param_resolved_names
        if (request.strip().upper() == "GET_DETAIL_INFORMATION_OF_A_COMPONENT"):
            try:
                parser_engine = str(request_data['parser_engine']).strip()
            except:
                parser_engine = "1"
            
            if ((parser_engine == 2) or (parser_engine == "2")):
                    try:
                        owl_component_name = str(request_data['owl_component_name']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_component_name param", "JSON")
                   
                    try:
                        ontology = str(request_data['ontology']).strip()
                    except:
                        return return_response_error(300, "error", "need provide ontology param", "JSON") 
                        
                    message = OWLEngine.get_detail_information_of_component_engine_2(owl_component_name,ontology.strip().upper())
                    return return_success_get_json(message) 
            elif ((parser_engine == 1) or (parser_engine == "1")):
                    try:
                        owl_component_uri = str(request_data['owl_component_uri']).strip()
                    except:
                        return return_response_error(300, "error", "need provide owl_component_uri param - Replace hash symbol (#) by %23", "JSON")   
                    
                    message = OWLEngine.get_detail_information_of_component_engine_1(owl_component_uri)
                    return return_success_get_json(message)
    # Build Graph
    def buildGraph(self, **request_data):
        try:
            graph_type = str(request_data['graph_type']).strip()
        except:
            graph_type = "1"

        if ((graph_type != "1") and (graph_type != 1) and (graph_type != "2") and (graph_type != 2) and (graph_type != "3") and (graph_type != 3)):
            return return_response_error(300, "error", "graph type is not correct", "JSON")

        try:
            entity_uri = str(request_data['owl_entity_uri']).strip()
        except:
            return return_response_error(300, "error", "need provide owl_entity_uri param - Replace hash symbol (#) by %23 ", "JSON")            

            
        message = OWLEngine.get_build_graph_of_ontology_entity(entity_uri.strip(),graph_type)
        return return_success_get_json(message)    
    # Get Triple Data    
    def getTriples(self, **request_data):
              
        try:
            triple_type = str(request_data['triple_type']).strip()
        except:
            return return_response_error(300, "error", "need provide triple_type param", "JSON")
        
        if ((triple_type == 1) or (triple_type == "1")):
            # Type 1 : Get predicates objects from input subject
            #   http://localhost:8000/getTriples?triple_type=1&owl_subject_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa 
            try:
                owl_subject_uri = str(request_data['owl_subject_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_subject_uri param - Replace hash symbol (#) by %23 ", "JSON")            
            
            message = OWLEngine.get_triples_predicates_objects_from_subject(owl_subject_uri.strip())
            return return_success_get_json(message)
        elif ((triple_type == 2) or (triple_type == "2")):
            # Type 2 : Get predicates objects from input subject
            #   http://localhost:8000/getTriples?triple_type=2&owl_object_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa   
            
            try:
                owl_object_uri = str(request_data['owl_object_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_object_uri param - Replace hash symbol (#) by %23 ", "JSON")            
            
            message = OWLEngine.get_triples_subjects_predicates_from_object(owl_object_uri.strip())
            return return_success_get_json(message)
        elif ((triple_type == 3) or (triple_type == "3")):
            # Type 3 : Get predicates objects from input subject
            #   http://localhost:8000/getTriples?triple_type=3&owl_predicate_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23has_Element              
            try:
                owl_predicate_uri = str(request_data['owl_predicate_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_predicate_uri param - Replace hash symbol (#) by %23 ", "JSON")            
            
            message = OWLEngine.get_triples_subjects_objects_from_predicate(owl_predicate_uri.strip())
            return return_success_get_json(message)
        elif ((triple_type == 4) or (triple_type == "4")):
            # Type 4 : Get objects from input subject + predicate
            #   http://localhost:8000/getTriples?triple_type=4&owl_subject_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa&owl_predicate_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23has_Element              
            #   http://localhost:8000/getTriples?triple_type=4&owl_subject_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23param_resolved_names&owl_predicate_uri=http://www.cs.nmsu.edu/~epontell/Ontologies/phylogenetic_methods.owl%23is_a
            try:
                owl_subject_uri = str(request_data['owl_subject_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_subject_uri param - Replace hash symbol (#) by %23 ", "JSON")     

            try:
                owl_predicate_uri = str(request_data['owl_predicate_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_predicate_uri param - Replace hash symbol (#) by %23 ", "JSON")       
            
            message = OWLEngine.get_triples_objects_from_subject_predicate(owl_subject_uri.strip(),owl_predicate_uri.strip())
            return return_success_get_json(message)
        elif ((triple_type==5) or (triple_type=="5")):
            # Type 5 : Get subjects from input object + predicate
            #   http://localhost:8000/getTriples?triple_type=5&owl_object_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxon&owl_predicate_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23has_Element              
            #   http://localhost:8000/getTriples?triple_type=5&owl_object_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa&owl_predicate_uri=http://www.cs.nmsu.edu/~epontell/Ontologies/phylogenetic_methods.owl%23is_a
            try:
                owl_object_uri = str(request_data['owl_object_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_object_uri param - Replace hash symbol (#) by %23 ", "JSON")     

            try:
                owl_predicate_uri = str(request_data['owl_predicate_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_predicate_uri param - Replace hash symbol (#) by %23 ", "JSON")       
            
            message = OWLEngine.get_triples_subjects_from_object_predicate(owl_object_uri.strip(),owl_predicate_uri.strip())
            return return_success_get_json(message)
        elif ((triple_type==6) or (triple_type=="6")):
            # Type 6 : Get predicates from input subject + object
            #   http://localhost:8000/getTriples?triple_type=6&owl_subject_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa&owl_object_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxon              
            try:
                owl_subject_uri = str(request_data['owl_subject_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_subject_uri param - Replace hash symbol (#) by %23 ", "JSON")     

            try:
                owl_object_uri = str(request_data['owl_object_uri']).strip()
            except:
                return return_response_error(300, "error", "need provide owl_object_uri param - Replace hash symbol (#) by %23 ", "JSON")       
            
            message = OWLEngine.get_triples_predicates_from_subject_object(owl_subject_uri.strip(),owl_object_uri.strip())
            return return_success_get_json(message)
    # Public /index
    index.exposed = True
    # public /query
    query.exposed = True
    # publoc /getTriples
    getTriples.exposed = True

    buildGraph.exposed = True
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