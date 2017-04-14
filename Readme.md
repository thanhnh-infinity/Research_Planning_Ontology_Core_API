# Ontology API

#### Service 1.

__Service Name:__  	 	Get all instances of a directed class

__Resource URI:__  		<http://<service_host>/query?request={}&owlclass={}}&ontology={}>

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_instances_of_a_class&owlclass=phylotastic_resources&ontology=cdao_phylotastic
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_instances_of_a_class&owlclass=NameResolution_Operation&ontology=cdao_phylotastic
```

#### Service 2.

__Service Name:__  	 	Get all directed sub-class of a class

__Resource URI:__  		<http://<service_host>/query?request=get_all_directed_subclass_of_a_class&owlclass={}&ontology={}>

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_directed_subclass_of_a_class&owlclass=operationClassification&ontology=phylo_methods
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_directed_subclass_of_a_class&owlclass=list_operation&ontology=phylo_methods
```

#### Service 3.

__Service Name:__  	 	Get hierarchy sub-classes of a root class

__Resource URI:__  		<http://<service_host>/query?request=get_hierarchy_subclasses_of_a_class&owlclass={}&ontology={}>

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_hierarchy_subclasses_of_a_class&owlclass=operationClassification&ontology=phylo_methods
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_hierarchy_subclasses_of_a_class&owlclass=list_operation&ontology=phylo_methods
```

#### Service 4.

__Service Name:__  	 	Get detail information of an operation instance

__Resource URI Engine 1:__  		<http://<service_host>/request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri={}>

__Resource URI Engine 2:__  		<http://<service_host>/request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name={}&ontology={}>

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23phylotastic_GetPhylogeneticTree_OT_POST
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name=phylotastic_FindScientificNamesFromFreeText_GNRD_GET&ontology=cdao_phylotastic
```