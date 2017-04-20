# Ontology API

#### Service 1.

__Service Name:__  	 	Get all instances of a directed class

__Resource URI - Parser 1:__  		http://<service_host>/query?request=get_all_instances_of_a_class&parser_engine=1&owl_class_uri={}

__Resource URI - Parser 2:__  		http://<service_host>/query?request=get_all_instances_of_a_class&parser_engine=2&owlclass={}}&ontology={}

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_instances_of_a_class&parser_engine=1&owl_class_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23tree_generation
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_instances_of_a_class&parser_engine=2&owlclass=phylotastic_resources&ontology=cdao_phylotastic
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_instances_of_a_class&parser_engine=2&owlclass=NameResolution_Operation&ontology=cdao_phylotastic
```

#### Service 2.

__Service Name:__  	 	Get all directed sub-class of a class

__Resource URI Parser engine 1 :__  	http://<service_host>/query?request=get_all_directed_subclass_of_a_class&parser_engine=1&owl_class_uri={}

__Resource URI Parser engine 2 :__  	http://<service_host>/query?request=get_all_directed_subclass_of_a_class&parser_engine=2&owlclass={}&ontology={}

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_directed_subclass_of_a_class&parser_engine=1&owl_class_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23names_operation
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_directed_subclass_of_a_class&parser_engine=2&owlclass=operationClassification&ontology=phylo_methods
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_all_directed_subclass_of_a_class&parser_engine=2&owlclass=list_operation&ontology=phylo_methods
```

#### Service 3.

__Service Name:__  	 	Get hierarchy sub-classes of a root class

__Resource URI:__  		http://<service_host>/query?request=get_hierarchy_subclasses_of_a_class&owlclass={}&ontology={}

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

__Resource URI Engine 1:__  		http://<service_host>/request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri={}

__Resource URI Engine 2:__  		http://<service_host>/request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name={}&ontology={}

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_operation&parser_engine=1&owl_operation_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23phylotastic_GetPhylogeneticTree_OT_POST
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_operation&parser_engine=2&owl_operation_name=phylotastic_FindScientificNamesFromFreeText_GNRD_GET&ontology=cdao_phylotastic
```

#### Service 5.

__Service Name:__  	 	Get detail information of an resource instance

__Resource URI Engine 1:__  		http://<service_host>/request=get_detail_information_of_a_resource&parser_engine=1&owl_operation_uri={}

__Resource URI Engine 2:__  		http://<service_host>/request=get_detail_information_of_a_resource&parser_engine=2&owl_resource_name={}&ontology={}

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_resource&parser_engine=1&owl_resource_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23bio_taxa
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_resource&parser_engine=2&owl_resource_name=free_text&ontology=cdao_phylotastic
```

#### Service 6.

__Service Name:__  	 	Get detail information of an component instance

__Resource URI Engine 1:__  		http://<service_host>/request=get_detail_information_of_a_component&parser_engine=1&owl_component_uri={}

__Resource URI Engine 2:__  		http://<service_host>/request=get_detail_information_of_a_component&parser_engine=2&owl_component_name={}&ontology={}

__HTTP Method:__ 		GET,POST
		
__Examples:__ 
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_component&parser_engine=1&owl_component_uri=http://www.cs.nmsu.edu/~epontell/CDAO/cdao.owl%23param_resolved_names
```
```
http://phylo.cs.nmsu.edu:8000/query?request=get_detail_information_of_a_component&parser_engine=2&owl_component_name=param_species&ontology=cdao_phylotastic
```

#### Service 7. (IN-PROGRESSIVE)

__Service Name:__  	 	Get detail workflow after running composition

__Resource URI Engine 1:__  		http://<service_host>/request=get_detail_workflow_after_perform_composition

__HTTP Method:__ 		POST

__INPUT:__ [{"resource_id":"","resource_uri":""},{"resource_id":"","resource_uri":""},{"resource_id":"","resource_uri":""},{"resource_id":"","resource_uri":""}]

__OUTPUT:__ <inprogressive> 

__Examples:__ 
```
curl - X POST "http://phylo.cs.nmsu.edu:8000/query?request=get_detail_workflow_after_perform_composition" -H "content-type:application/json" -d '<input>' 
```
