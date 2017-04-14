#import ontospy
import Global_Parameters
import OWLUltility
import sys
import os
import urllib2
import collections
import subprocess

#CDAO_PHYLOTASTIC_ONT = ontospy.Ontospy(Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL)
#PHYLO_METHODS_ONT = ontospy.Ontospy(Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL)

class MultipleLevelsOfDictionary(collections.OrderedDict):
    def __getitem__(self,item):
        try:
            return collections.OrderedDict.__getitem__(self,item)
        except:
            value = self[item] = type(self)()
            return value

def return_success_get(data):
    cherrypy.response.headers['Content-Type'] = "application/json"
    cherrypy.response.headers['Retry-After'] = 60
    cherrypy.response.status = 200
    return json.dumps(data, indent=4)

def return_response_error(code, type, mess, format="JSON"):
    if (format == "JSON"):
        cherrypy.response.headers['Content-Type'] = "application/json"
        cherrypy.response.headers['Retry-After'] = 60
        cherrypy.response.status = code
        message = {type: mess}
        return json.dumps(message)
    else:
        return "Not support yet"
#Firt method : Get all instances of a nested class (directed class)
def get_all_instances_of_a_directed_class(localClassName,sourceOntology):
    full_uri_class = ""
    if (sourceOntology == "CDAO_PHYLOTASTIC"):
        full_uri_class = Global_Parameters.PREFIX_CDAO_PHYLOTASTIC_ONTOLOGY_URL + localClassName
    elif (sourceOntology == "PHYLO_METHODS"):
        full_uri_class = Global_Parameters.PREFIX_PHYLOGENETIC_METHODS_ONTOLOGY_URL + localClassName
    p = subprocess.Popen(['java', '-jar', 'JenaOWLEngine/OntologyEngine.jar','-CDAO_ONTOLOGY',Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL,'-PHYLO_METHODS_ONTOLOGY',Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL,'-QUERY','GET_ALL_INSTANCES_OF_A_DIRECTED_CLASS','-OWLCLASS_URI',full_uri_class], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    return out
#Second service : Get all directed subclasses of a class
def get_all_directed_subclass_of_class(localClassName,sourceOntology):
    full_uri_class = ""
    if (sourceOntology == "CDAO_PHYLOTASTIC"):
        full_uri_class = Global_Parameters.PREFIX_CDAO_PHYLOTASTIC_ONTOLOGY_URL + localClassName
    elif (sourceOntology == "PHYLO_METHODS"):
        full_uri_class = Global_Parameters.PREFIX_PHYLOGENETIC_METHODS_ONTOLOGY_URL + localClassName
    p = subprocess.Popen(['java', '-jar', 'JenaOWLEngine/OntologyEngine.jar','-CDAO_ONTOLOGY',Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL,'-PHYLO_METHODS_ONTOLOGY',Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL,'-QUERY','GET_DIRECTED_SUBCLASS_OF_CLASS','-OWLCLASS_URI',full_uri_class], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    return out
#3rd service : Get hierarchy subclasses of a class
def get_hierarchy_subclasses_of_class(localClassName,sourceOntology):
    full_uri_class = ""
    if (sourceOntology == "CDAO_PHYLOTASTIC"):
        full_uri_class = Global_Parameters.PREFIX_CDAO_PHYLOTASTIC_ONTOLOGY_URL + localClassName
    elif (sourceOntology == "PHYLO_METHODS"):
        full_uri_class = Global_Parameters.PREFIX_PHYLOGENETIC_METHODS_ONTOLOGY_URL + localClassName
    p = subprocess.Popen(['java', '-jar', 'JenaOWLEngine/OntologyEngine.jar','-CDAO_ONTOLOGY',Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL,'-PHYLO_METHODS_ONTOLOGY',Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL,'-QUERY','GET_HIERARCHY_CLASSES_FROM_ROOT_CLASS','-OWLCLASS_URI',full_uri_class], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    return out
#4th service : Get detail information of an opertaion - Engine 2
def get_detail_information_of_operation_engine_2(operation_name,sourceOntology):
    full_uri_class = ""
    if (sourceOntology == "CDAO_PHYLOTASTIC"):
        full_uri_class = Global_Parameters.PREFIX_CDAO_PHYLOTASTIC_ONTOLOGY_URL + operation_name
    elif (sourceOntology == "PHYLO_METHODS"):
        full_uri_class = Global_Parameters.PREFIX_PHYLOGENETIC_METHODS_ONTOLOGY_URL + operation_name
    p = subprocess.Popen(['java', '-jar', 'JenaOWLEngine/OntologyEngine.jar','-CDAO_ONTOLOGY',Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL,'-PHYLO_METHODS_ONTOLOGY',Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL,'-QUERY','GET_DETAIL_INFO_OF_AN_OPERATION_INSTANCE','-OWLINSTANCE_URI',full_uri_class], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    return out
#4th service : Get detail information of an opertaion - Engine 1
def get_detail_information_of_operation_engine_1(operation_uri):
    p = subprocess.Popen(['java', '-jar', 'JenaOWLEngine/OntologyEngine.jar','-CDAO_ONTOLOGY',Global_Parameters.GLOBAL_CDAO_PHYLOTASTIC_ONTOLOGY_URL,'-PHYLO_METHODS_ONTOLOGY',Global_Parameters.GLOBAL_PHYLO_METHODS_ONTOLOGY_URL,'-QUERY','GET_DETAIL_INFO_OF_AN_OPERATION_INSTANCE','-OWLINSTANCE_URI',operation_uri], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    return out    
#get_all_instances_of_a_directed_class("phylotastic_resources")
   