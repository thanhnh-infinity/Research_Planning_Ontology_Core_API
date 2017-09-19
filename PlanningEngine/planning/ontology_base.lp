%=======================================================================
%PART 1 : Define classes that are used from CDAO ontology
%=======================================================================
class(network).
class(galledTree).
class(tree).
class(reconcileTree).
class(rootedTree).
class(speciesTree).
class(subTree).
class(unresolvedTree).
class(unrootedTree).
class(fullyResolvedRootedTree).
class(fullyResolvedUnrootedTree).
class(lineage).
class(rootedSubtree).
class(unrootedSubtree).
class(starTree).
class(unresolvedRootedTree).
class(unresolvedUnrootedTree).
class(bifucatingTree).
class(fullyResolvedTree).
class(clade).
class(holophyleticGroup).

class(cDAOAnnotation).
class(treeAnnotation).
class(treeFormat).
class(newickTree).
class(nexusTreeBlock).
class(phylipTree).
class(phylo4Tree).
class(phyloTree).
class(simmapTree).
class(treeProcedure).
class(phylogenetic_algorithm).

class(setOfThings).
class(setOfCharacters).
class(setOfObjects).

subClass(fullyResolvedRootedTree,fullyResolvedTree).
subClass(fullyResolvedUnrootedTree,fullyResolvedTree).
subClass(fullyResolvedTree,tree).
subClass(fullyResolvedRootedTree,rootedTree).
subClass(lineage,rootedTree).
subClass(rootedSubtree,rootedTree).
subClass(starTree,rootedTree).
subClass(unresolvedRootedTree,rootedTree).
subClass(rootedTree,tree).
subClass(speciesTree,tree).
subClass(rootedSubtree,subtree).
subClass(unrootedSubtree,subTree).
subClass(subTree,tree).
subClass(unresolvedRootedTree,unresolvedTree).
subClass(unresolvedUnrootedTree,unresolvedTree).
subClass(unresolvedTree,tree).
subClass(fullyResolvedUnrootedTree,unrootedTree).
subClass(unresolvedUnrootedTree,unrootedTree).
subClass(unrootedTree,tree).
subClass(tree,network).
subClass(reconcileTree,tree).

subClass(treeAnnotation,cDAOAnnotation).
subClass(treeFormat,treeAnnotation).
subClass(treeProcedure,treeAnnotation).
subClass(newickTree,treeFormat).
subClass(nexusTreeBlock,treeFormat).
subClass(phylipTree,treeFormat).
subClass(phylo4Tree,treeFormat).
subClass(phyloTree,treeFormat).
subClass(simmapTree,treeFormat).

subClass(setOfCharacters,setOfThings).
subClass(setOfObjects, setOfThings).


equalClasses(bifucatingTree,fullyResolvedTree).
equalClasses(clade,holophyleticGroup).
equalClasses(treeProcedure,phylogenetic_algorithm).

%=======================================================================
%PART 2 : Define classes + instances are defined Operation
%=======================================================================
%Define class of operation 
class(operationClassification).

class(list_operation).
class(information_operation).
class(names_operation).
class(species_list_opertaion).
class(taxonomicNameResolution_operation).
class(nameResolution_operation).

class(images_operation).
class(species_images_operation).

class(tree_operation).
class(tree_generation).

%Define subclass of operation
subClass(list_operation,operationClassification).
subClass(tree_operation,operationClassification).
subClass(names_operation,list_operation).
subClass(images_operation,list_operation).
subClass(information_operation,list_operation).
subClass(tree_generation,tree_operation).
subClass(nameResolution_operation,names_operation).
subClass(species_list_opertaion,names_operation).
subClass(taxonomicNameResolution_operation,names_operation).
subClass(species_images_operation,images_operation).

%Define class of phylogenetic Web Service methods components
class(phylotastic_concept).
class(phylotastic_components).
class(phylotastic_data_format).
class(phylotastic_data_structure).
class(phylotastic_data_type).
class(phylotastic_parameters).
class(phylotastic_resources).

subClass(phylotastic_resources,phylotastic_concept).
subClass(phylotastic_components,phylotastic_concept).
subClass(phylotastic_data_format,phylotastic_concept).
subClass(phylotastic_data_structure,phylotastic_concept).
subClass(phylotastic_data_type,phylotastic_concept).
subClass(phylotastic_parameters,phylotastic_concept).

%Define instances of all classes
instance(phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
instance(phylotastic_FindScientificNamesFromWeb_GNRD_GET).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_POST).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST).
instance(phylotastic_GetPhylogeneticTree_OT_GET).
instance(phylotastic_GetPhylogeneticTree_OT_POST).


%Define which instances of class
isInstanceOf(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,nameResolution_operation).
isInstanceOf(phylotastic_FindScientificNamesFromWeb_GNRD_GET,nameResolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET,taxonomicNameResolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST,taxonomicNameResolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,taxonomicNameResolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,taxonomicNameResolution_operation).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,species_list_opertaion).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET,species_list_opertaion).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,species_list_opertaion).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET,information_operation).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST,information_operation).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_GET,species_images_operation).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_POST,species_images_operation).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET,tree_generation).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST,tree_generation).

%=======================================================================
%PART 3  : Define instances for Resources
%=======================================================================
% Define instances
instance(a_country_in_the_world).
instance(bio_taxa).
instance(bio_taxon).
instance(cdao_species_tree).
instance(eol_species_image).
instance(eol_species_information_url).
instance(eol_species_information_urls).
instance(free_text).
instance(http_response_time).
instance(http_status_code_int).
instance(http_URL).
instance(phylotastic_scientific_name).
instance(phylotastic_scientific_names).
instance(phylotastic_TNRS_resolved_name).
instance(phylotastic_TNRS_resolved_names).


%Define instances of which class : all resources have to be instanced from phylotastic_resources
% and its selft can be instancef from class that defined what is it
isInstanceOf(a_country_in_the_world,phylotastic_resources).
isInstanceOf(bio_taxa,phylotastic_resources).
isInstanceOf(bio_taxa,setOfObjects).
isInstanceOf(bio_taxon,phylotastic_resources).
isInstanceOf(cdao_species_tree,phylotastic_resources).
isInstanceOf(cdao_species_tree,speciesTree).
isInstanceOf(eol_species_image,phylotastic_resources).
isInstanceOf(eol_species_information_url,phylotastic_resources).
isInstanceOf(eol_species_information_urls,phylotastic_resources).
isInstanceOf(eol_species_information_urls,setOfObjects).
isInstanceOf(free_text,phylotastic_resources).
isInstanceOf(http_response_time,phylotastic_resources).
isInstanceOf(http_status_code_int,phylotastic_resources).
isInstanceOf(http_URL,phylotastic_resources).
isInstanceOf(phylotastic_scientific_name,phylotastic_resources).
isInstanceOf(phylotastic_scientific_names,phylotastic_resources).
isInstanceOf(phylotastic_scientific_names,setOfObjects).
isInstanceOf(phylotastic_TNRS_resolved_name,phylotastic_resources).
isInstanceOf(phylotastic_TNRS_resolved_names,phylotastic_resources).
isInstanceOf(phylotastic_TNRS_resolved_names,setOfObjects).

% Define Data Type and/OR data format of every instances in resources
resource_has_data_type(a_country_in_the_world,string).
resource_has_data_format(a_country_in_the_world,freeText).
resource_has_data_type(bio_taxa,list_of_objects).
resource_list_has_element(bio_taxa,bio_taxon).
resource_has_data_type(bio_taxon,string).
resource_has_data_format(bio_taxon,freeText).
resource_has_data_type(eol_species_image,defined_object).
resource_has_data_type(eol_species_information_url,defined_object).
resource_has_data_type(eol_species_information_urls,list_of_objects).
resource_list_has_element(eol_species_information_urls,eol_species_information_url).
resource_has_data_type(free_text,string).
resource_has_data_format(free_text,freeText).
resource_has_data_type(http_response_time,double).
resource_has_data_type(http_status_code_int,integer).
resource_has_data_type(http_URL,string).
resource_has_data_type(phylotastic_scientific_name,string).
resource_has_data_type(phylotastic_scientific_names,list_of_objects).
resource_list_has_element(phylotastic_scientific_names,phylotastic_scientific_name).
resource_has_data_type(phylotastic_TNRS_resolved_name,defined_object).
resource_has_data_type(phylotastic_TNRS_resolved_names,list_of_objects).
resource_list_has_element(phylotastic_TNRS_resolved_names,phylotastic_TNRS_resolved_name).


%=======================================================================
%PART 4 : Define instances for components - that mapped name definitely 100% with WSDL components name
%=======================================================================
instance(param_country).
instance(param_eol_species_information_urls_json).
instance(param_execution_time).
instance(param_names).
instance(param_resolved_names).
instance(param_scientific_names_json).
instance(param_species).
instance(param_species_2).
instance(param_species_tree).
instance(param_status_code).
instance(param_taxa).
instance(param_taxon).
instance(param_text).
instance(param_url).

%Define instances of which class : all resources have to be instanced from phylotastic_components
% and its selft can be instancef from class that defined what is it
isInstanceOf(param_country,phylotastic_components).
isInstanceOf(param_eol_species_information_urls_json,phylotastic_components).
isInstanceOf(param_execution_time,phylotastic_components).
isInstanceOf(param_names,phylotastic_components).
isInstanceOf(param_resolved_names,phylotastic_components).
isInstanceOf(param_scientific_names_json,phylotastic_components).
isInstanceOf(param_species,phylotastic_components).
isInstanceOf(param_species_2,phylotastic_components).
isInstanceOf(param_species_tree,phylotastic_components).
isInstanceOf(param_status_code,phylotastic_components).
isInstanceOf(param_taxa,phylotastic_components).
isInstanceOf(param_taxon,phylotastic_components).
isInstanceOf(param_text,phylotastic_components).
isInstanceOf(param_url,phylotastic_components).

%Define Object Property IS-A that used for these components - Component is-a resource
component_is_a_resource(param_country,a_country_in_the_world).
component_is_a_resource(param_eol_species_information_urls_json,eol_species_information_urls).
component_is_a_resource(param_execution_time,http_response_time).
component_is_a_resource(param_names,phylotastic_scientific_names).
component_is_a_resource(param_resolved_names,bio_taxa).
component_is_a_resource(param_resolved_names,phylotastic_TNRS_resolved_names).
%component_is_a_resource(param_scientific_names_json,bio_taxa).
component_is_a_resource(param_scientific_names_json,phylotastic_scientific_names).
component_is_a_resource(param_species,phylotastic_scientific_names).
component_is_a_resource(param_species_2,phylotastic_scientific_names).
component_is_a_resource(param_species_tree,cdao_species_tree).
component_is_a_resource(param_status_code,http_status_code_int).
component_is_a_resource(param_taxa,bio_taxa).
component_is_a_resource(param_taxon,bio_taxon).
component_is_a_resource(param_text,free_text).
component_is_a_resource(param_url,http_URL).

%Define Data property hasParameterNameText for these components
component_hasParameterNameText(param_country,"country").
component_hasParameterNameText(param_eol_species_information_urls_json,"speices").
component_hasParameterNameText(param_execution_time,"execution_time").
component_hasParameterNameText(param_names,"names").
component_hasParameterNameText(param_resolved_names,"resolvedNames").
component_hasParameterNameText(param_scientific_names_json,"scientificNames").
component_hasParameterNameText(param_species,"species").
component_hasParameterNameText(param_species_2,"species").
component_hasParameterNameText(param_species_tree,"newick").
component_hasParameterNameText(param_status_code,"status_code").
component_hasParameterNameText(param_taxa,"taxa").
component_hasParameterNameText(param_taxon,"taxon").
component_hasParameterNameText(param_text,"text").
component_hasParameterNameText(param_url,"url").

%Define particular Object Property for some params
component_has_Annotation(param_species_tree,newickTree). 
component_has_data_format(param_species_tree,newickTree).
component_has_data_format(param_scientific_names_json,application_json).
component_has_data_format(param_resolved_names,application_json).
component_has_data_format(param_species,application_json).
component_has_data_format(param_eol_species_information_urls_json,application_json).
component_has_data_format(param_taxon,freeText).
component_has_data_format(param_text,freeText).
component_has_data_format(param_url,uri).
%=======================================================================
%PART 5 : Define instances for phylotastic data format
%=======================================================================
instance(freeText).
instance(application_json).
instance(application_x_www_urlencoded).
instance(application_xml).
instance(uri).


isInstanceOf(freeText,phylotastic_data_format).
isInstanceOf(application_json,phylotastic_data_format).
isInstanceOf(application_x_www_urlencoded,phylotastic_data_format).
isInstanceOf(application_xml,phylotastic_data_format).
isInstanceOf(uri,phylotastic_data_format).

%=======================================================================
%PART 6 : Define instances for data structure
%=======================================================================
instance(list_of_objects).
instance(list_of_strings).

isInstanceOf(list_of_objects,phylotastic_data_structure).
isInstanceOf(list_of_objects,setOfObjects).
isInstanceOf(list_of_strings,setOfCharacters).
isInstanceOf(list_of_strings,phylotastic_data_structure).

data_structure_list_has_Element_data_type(list_of_objects, defined_object).
data_structure_list_has_Element_data_type(list_of_strings, string).

%=======================================================================
%Define instances for data type
%=======================================================================
instance(boolean).
instance(double).
instance(integer).
instance(string).
instance(uri).

isInstanceOf(boolean,phylotastic_data_type).
isInstanceOf(double,phylotastic_data_type).
isInstanceOf(integer,phylotastic_data_type).
isInstanceOf(string,phylotastic_data_type).
isInstanceOf(uri,phylotastic_data_type).

%=======================================================================
%PART 7 : Define instances for phylotastic parameters class
%=======================================================================
instance(phylotastic_FindScientificNames_FromText_GNRD_GET_In).
instance(phylotastic_FindScientificNames_FromText_GNRD_GET_Out).
instance(phylotastic_FindScientificNames_Web_GNRD_GET_In).
instance(phylotastic_FindScientificNames_Web_GNRD_GET_Out).
instance(phylotastic_GetPhylogeneticTree_OT_GET_In).
instance(phylotastic_GetPhylogeneticTree_OT_GET_Out).
instance(phylotastic_GetPhylogeneticTree_OT_POST_In).
instance(phylotastic_GetPhylogeneticTree_OT_POST_Out).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out).
instance(phylotastic_GetImageURLsOfSpecies_EOL_GET_In).
instance(phylotastic_GetImageURLsOfSpecies_EOL_GET_Out).
instance(phylotastic_GetImageURLsOfSpecies_EOL_POST_In).
instance(phylotastic_GetImageURLsOfSpecies_EOL_POST_Out).


isInstanceOf(phylotastic_FindScientificNames_FromText_GNRD_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_Web_GNRD_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_Web_GNRD_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_POST_Out,phylotastic_parameters).


operation_has_Input_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_In).
operation_has_Output_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_Out).
operation_has_Input_Parameter(phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_In).
operation_has_Output_Parameter(phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_Out).
operation_has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out).
operation_has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_In).
operation_has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_POST,phylotastic_ResolvedScientificNames_OT_TNRS_POST_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_POST,phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out).
operation_has_Input_Parameter(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out).
operation_has_Input_Parameter(phylotastic_GetAllSpeciesFromTaxon_OT_GET,phylotastic_GetAllSpeciesFromTaxon_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetAllSpeciesFromTaxon_OT_GET,phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out).
operation_has_Input_Parameter(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In).
operation_has_Output_Parameter(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out).
operation_has_Input_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_GET,phylotastic_GetInformationURLsOfSpecies_EOL_GET_In).
operation_has_Output_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_GET,phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out).
operation_has_Input_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_POST,phylotastic_GetInformationURLsOfSpecies_EOL_POST_In).
operation_has_Output_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_POST,phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out).
operation_has_Input_Parameter(phylotastic_GetImageURLsOfSpecies_EOL_GET,phylotastic_GetImageURLsOfSpecies_EOL_GET_In).
operation_has_Output_Parameter(phylotastic_GetImageURLsOfSpecies_EOL_GET,phylotastic_GetImageURLsOfSpecies_EOL_GET_Out).
operation_has_Input_Parameter(phylotastic_GetImageURLsOfSpecies_EOL_POST,phylotastic_GetImageURLsOfSpecies_EOL_POST_In).
operation_has_Output_Parameter(phylotastic_GetImageURLsOfSpecies_EOL_POST,phylotastic_GetImageURLsOfSpecies_EOL_POST_Out).


parameter_has_Data_Format(phylotastic_FindScientificNames_FromText_GNRD_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_In,param_text).
parameter_has_Data_Format(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,application_json).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_execution_time).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_status_code).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_scientific_names_json).

parameter_has_Data_Format(phylotastic_FindScientificNames_Web_GNRD_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_In,param_url).
parameter_has_Data_Format(phylotastic_FindScientificNames_Web_GNRD_GET_Out,application_json).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_execution_time).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_status_code).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_scientific_names_json).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,param_names).
parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,param_resolved_names).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,param_scientific_names_json).
parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,param_status_code).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,param_resolved_names).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,param_names).
parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,param_status_code).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,param_resolved_names).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,param_scientific_names_json).
parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,param_status_code).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,param_resolved_names).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_In,param_taxa).
parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out,param_species_tree).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_POST_In,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_In,param_resolved_names).
parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_POST_Out,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_Out,param_species_tree).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,param_country).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,param_taxon).
parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_taxon).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_species).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,param_taxon).
parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_taxon).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_species).

parameter_has_Data_Format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,param_taxon).
parameter_has_Data_Format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,application_json).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_taxon).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_species).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,application_x_www_urlencoded).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,param_species_2).
parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,param_eol_species_information_urls_json).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,param_species).
parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,param_status_code).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,param_eol_species_information_urls_json).

%parameter_has_Data_Format(phylotastic_GetImageURLsOfSpecies_EOL_GET_In,application_json).
%parameter_has_Component(phylotastic_GetImageURLsOfSpecies_EOL_GET_Out,param_species).

%=======================================================================
%PART 8 : Define support rules
%=======================================================================
subClass(X,Y) :- class(X), class(Y), class(Z), subClass(Z,Y), subClass(X,Z).
subClass(X,Y) :- class(X), class(Y), subClass(X,Z), equalClasses(Y,Z).
subClass(X,Y) :- class(X), class(Y), subClass(Z,Y), equalClasses(X,Z).
isInstanceOf(X,Y) :- class(Y), instance(X), class(Z), isInstanceOf(X,Z), subClass(Z,Y). 
equalClasses(X,Y) :- equalClasses(Y,X), class(X), class(Y).

%=======================================================================
%PART 9 : Define composite utilitites
%=======================================================================
resource(Re) :- instance(Re), isInstanceOf(Re,phylotastic_resources).

%=======================================================================
%PART 10 : Define Operation, Parameter Input Output, Components, type and format for Planning Web Service Logic Programming
%=======================================================================
operation(X) :- instance(X), isInstanceOf(X,Y), class(Y), subClass(Y,operationClassification).
input_parameter(IN) :- operation(OP), operation_has_Input_Parameter(OP,IN).
output_parameter(OUT) :- operation(OP), operation_has_Output_Parameter(OP,OUT).
has_Input_Parameter(OP,IN) :- operation_has_Input_Parameter(OP,IN).
has_Output_Parameter(OP,OUT) :- operation_has_Output_Parameter(OP,OUT).

has_Output_Parameter_Component(OUT,OUT_COM_SEM) :- output_parameter(OUT), parameter_has_Component(OUT,OUT_COM), component_is_a_resource(OUT_COM,OUT_COM_SEM).
has_Input_Parameter_Component(IN,IN_COM_SEM) :- input_parameter(IN), parameter_has_Component(IN,IN_COM), component_is_a_resource(IN_COM,IN_COM_SEM).
input_parameter_component(IN_COM_SEM) :- has_Input_Parameter_Component(IN,IN_COM_SEM).
output_parameter_component(OUT_COM_SEM) :- has_Output_Parameter_Component(OUT, OUT_COM_SEM).

data_type(X) :- instance(X), isInstanceOf(X,phylotastic_data_type).
data_type(X) :- instance(X), isInstanceOf(X,phylotastic_data_structure).
data_format(X) :- instance(X), isInstanceOf(X,phylotastic_data_format).

has_Data_Type(COM_RES,DT) :- resource_has_data_type(COM_RES,DT), data_type(DT), resource(COM_RES).
has_Data_Type(RES,DT) :- resource(RES), isInstanceOf(RES,DT), class(DT), subClass(DT,tree).

has_Data_Format(RES,DF) :- resource(RES), data_format(X), component_has_data_format(COM,DF), component_is_a_resource(COM,RES).
has_Data_Format(RES,DF) :- resource(RES), class(DF), subClass(DF,cDAOAnnotation), component_has_data_format(COM,DF), component_is_a_resource(COM,RES).

%=======================================================================
%PART 11 : IMPORTANT : A part of planning - Defined Static Causal Laws = safistfy condition
%=======================================================================
holds(satisfy_precondition(phylotastic_FindScientificNames_FromText_GNRD_GET_In),Loop) :- holds(planningHasComponent(free_text),Loop), not -holds(planningHasInput(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_FindScientificNames_Web_GNRD_GET_In),Loop) :- holds(planningHasComponent(http_URL),Loop),not -holds(planningHasInput(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_GET_In),Loop) :- holds(planningHasComponent(bio_taxa),Loop),not -holds(planningHasInput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In), Loop), step(Loop).
%holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_POST_In),Loop) :- holds(planningHasComponent(phylotastic_TNRS_resolved_names),Loop),not -holds(planningHasInput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In),Loop) :- holds(planningHasComponent(phylotastic_scientific_names),Loop),not -holds(planningHasInput(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In), Loop), step(Loop).

 
%For some particular defiend
% Define Web Service
web_service(phylotastic_ws).
has_WSDL(phylotastic_ws, "http://128.123.177.13/WSRegistry/sites/default/files/wsdl/Phylotastic_WS.wsdl").
has_Operation(phylotastic_ws, phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Operation(phylotastic_ws, phylotastic_FindScientificNamesFromWeb_GNRD_GET).
has_Operation(phylotastic_ws, phylotastic_GetPhylogeneticTree_OT_GET).
has_Operation(phylotastic_ws, phylotastic_GetPhylogeneticTree_OT_POST).
has_Operation(phylotastic_ws, phylotastic_ResolvedScientificNames_OT_TNRS_GET).
has_Operation(phylotastic_ws, phylotastic_ResolvedScientificNames_OT_TNRS_POST).
has_Operation(phylotastic_ws, phylotastic_ResolvedScientificNames_GNR_TNRS_GET).
has_Operation(phylotastic_ws, phylotastic_ResolvedScientificNames_GNR_TNRS_POST).
has_Operation(phylotastic_ws, phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET).
has_Operation(phylotastic_ws, phylotastic_GetAllSpeciesFromTaxon_OT_GET).
has_Operation(phylotastic_ws, phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
has_Operation(phylotastic_ws, phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
has_Operation(phylotastic_ws, phylotastic_GetInformationURLsOfSpecies_EOL_GET).
has_Operation(phylotastic_ws, phylotastic_GetInformationURLsOfSpecies_EOL_POST).



