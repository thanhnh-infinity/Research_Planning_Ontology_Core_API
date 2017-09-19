%=======================================================================
%PART 1 : Define classes that are used from CDAO ontology
%=======================================================================

class(network).
class(cDAOAnnotation).
class(setOfThings).
class(galledTree).
class(reticulateEvolution).
class(tree).
class(polyphyleticGroup).
class(monophyleticGroup).
class(characterStateDataMatrixAnnotation).
class(edgeAnnotation).
class(treeAnnotation).
class(tUAnnotation).
class(modelDescription).
class(setOfNodes).
class(setOfCharacters).
class(setOfObjects).
class(unrootedTree).
class(clade).
class(fullyResolvedTree).
class(rootedTree).
class(subtree).
class(reconcileTree).
class(bifurcatingTree).
class(speciesTree).
class(resource_Tree).
class(unresolvedTree).
class(paraphyleticGroup).
class(holophyleticGroup).
class(alignmentProcedure).
class(dataMatrixFormat).
class(edgeLength).
class(treeFormat).
class(treeProcedure).
class(taxonomicLink).
class(gapCost).
class(substitutionModel).
class(fullyResolvedUnrootedTree).
class(unresolvedUnrootedTree).
class(rootedSubtree).
class(starTree).
class(fullyResolvedRootedTree).
class(unresolvedRootedTree).
class(lineage).
class(unrootedSubtree).
class(resource_reconcileTree).
class(phylotasticETESpeciesTree).
class(resource_speciesTree).
class(phylotasticSpeciesTree).
class(resource_imagesSpeciesTree).
class(resource_geneTree).
class(pHYLIPDataMatrix).
class(fASTADataMatrix).
class(genBankDataMatrix).
class(nexusDataBlock).
class(newickTree).
class(phyloTree).
class(sIMMAPTree).
class(nEXUSTreeBlock).
class(phylo4Tree).
class(pHYLIPTree).
class(jukesKantor).
class(kimura2Parameters).
class(gammaDistribution).


subClass(galledTree,network).
subClass(reticulateEvolution,network).
subClass(tree,network).
subClass(polyphyleticGroup,network).
subClass(monophyleticGroup,network).
subClass(characterStateDataMatrixAnnotation,cDAOAnnotation).
subClass(edgeAnnotation,cDAOAnnotation).
subClass(treeAnnotation,cDAOAnnotation).
subClass(tUAnnotation,cDAOAnnotation).
subClass(modelDescription,cDAOAnnotation).
subClass(setOfNodes,setOfThings).
subClass(setOfCharacters,setOfThings).
subClass(setOfObjects,setOfThings).
subClass(unrootedTree,tree).
subClass(clade,tree).
subClass(fullyResolvedTree,tree).
subClass(rootedTree,tree).
subClass(subtree,tree).
subClass(reconcileTree,tree).
subClass(bifurcatingTree,tree).
subClass(speciesTree,tree).
subClass(resource_Tree,tree).
subClass(unresolvedTree,tree).
subClass(paraphyleticGroup,monophyleticGroup).
subClass(holophyleticGroup,monophyleticGroup).
subClass(alignmentProcedure,characterStateDataMatrixAnnotation).
subClass(dataMatrixFormat,characterStateDataMatrixAnnotation).
subClass(edgeLength,edgeAnnotation).
subClass(treeFormat,treeAnnotation).
subClass(treeProcedure,treeAnnotation).
subClass(taxonomicLink,tUAnnotation).
subClass(gapCost,modelDescription).
subClass(substitutionModel,modelDescription).
subClass(fullyResolvedUnrootedTree,unrootedTree).
subClass(unresolvedUnrootedTree,unrootedTree).
subClass(rootedSubtree,rootedTree).
subClass(starTree,rootedTree).
subClass(fullyResolvedRootedTree,rootedTree).
subClass(unresolvedRootedTree,rootedTree).
subClass(lineage,rootedTree).
subClass(rootedSubtree,subtree).
subClass(unrootedSubtree,subtree).
subClass(resource_reconcileTree,reconcileTree).
subClass(fullyResolvedRootedTree,bifurcatingTree).
subClass(fullyResolvedUnrootedTree,bifurcatingTree).
subClass(phylotasticETESpeciesTree,speciesTree).
subClass(resource_speciesTree,speciesTree).
subClass(phylotasticSpeciesTree,speciesTree).
subClass(resource_speciesTree,resource_Tree).
subClass(resource_imagesSpeciesTree,resource_Tree).
subClass(resource_geneTree,resource_Tree).
subClass(resource_reconcileTree,resource_Tree).
subClass(unresolvedRootedTree,unresolvedTree).
subClass(unresolvedUnrootedTree,unresolvedTree).
subClass(pHYLIPDataMatrix,dataMatrixFormat).
subClass(fASTADataMatrix,dataMatrixFormat).
subClass(genBankDataMatrix,dataMatrixFormat).
subClass(nexusDataBlock,dataMatrixFormat).
subClass(newickTree,treeFormat).
subClass(phyloTree,treeFormat).
subClass(sIMMAPTree,treeFormat).
subClass(nEXUSTreeBlock,treeFormat).
subClass(phylo4Tree,treeFormat).
subClass(pHYLIPTree,treeFormat).
subClass(jukesKantor,substitutionModel).
subClass(kimura2Parameters,substitutionModel).
subClass(gammaDistribution,substitutionModel).


equalClasses(clade,holophyleticGroup).
equalClasses(bifurcatingTree,fullyResolvedTree).


%=======================================================================
%PART 2 : Define classes + instances are defined Operation
%=======================================================================
%Define class of operation 
class(operationClassification).
class(species_operation).
class(names_operation).
class(taxon_operation).
class(list_operation).
class(tree_operation).
class(species_information_operation).
class(names_resolution_operation).
class(names_extraction_operation).
class(taxon_to_species_operation).
class(list_update_operation).
class(list_creation_operation).
class(list_retrieval_operation).
class(tree_generation).
class(tree_information).
class(tree_comparison).
class(tree_visualization).
class(tree_transformation).
class(species_url_operation).
class(species_images_operation).
class(names_extraction_web).
class(names_extracion_text).
class(names_extraction_document).
class(taxon_to_species_by_genome).
class(taxon_to_species_by_country).
class(list_update_delete).
class(list_update_edit).
class(list_update_add).
class(tree_retrieval_operation).
class(tree_extraction_operation).
class(tree_support_studies).
class(branch_length_comparison_operation).
class(symmetric_comparison_operation).
class(tree_scaling_operation).
class(list_update_edit_list_content).
class(list_update_edit_list_metadata).
class(phylogeny_based_extraction).
class(taxonomy_based_extraction).
class(tree_publifications).


%Define subclass of operation 
subClass(species_operation,operationClassification).
subClass(names_operation,operationClassification).
subClass(taxon_operation,operationClassification).
subClass(list_operation,operationClassification).
subClass(tree_operation,operationClassification).
subClass(species_information_operation,species_operation).
subClass(names_resolution_operation,names_operation).
subClass(names_extraction_operation,names_operation).
subClass(taxon_to_species_operation,taxon_operation).
subClass(list_update_operation,list_operation).
subClass(list_creation_operation,list_operation).
subClass(list_retrieval_operation,list_operation).
subClass(tree_generation,tree_operation).
subClass(tree_information,tree_operation).
subClass(tree_comparison,tree_operation).
subClass(tree_visualization,tree_operation).
subClass(tree_transformation,tree_operation).
subClass(species_url_operation,species_information_operation).
subClass(species_images_operation,species_information_operation).
subClass(names_extraction_web,names_extraction_operation).
subClass(names_extracion_text,names_extraction_operation).
subClass(names_extraction_document,names_extraction_operation).
subClass(taxon_to_species_by_genome,taxon_to_species_operation).
subClass(taxon_to_species_by_country,taxon_to_species_operation).
subClass(list_update_delete,list_update_operation).
subClass(list_update_edit,list_update_operation).
subClass(list_update_add,list_update_operation).
subClass(tree_retrieval_operation,tree_generation).
subClass(tree_extraction_operation,tree_generation).
subClass(tree_support_studies,tree_information).
subClass(branch_length_comparison_operation,tree_comparison).
subClass(symmetric_comparison_operation,tree_comparison).
subClass(tree_scaling_operation,tree_transformation).
subClass(list_update_edit_list_content,list_update_edit).
subClass(list_update_edit_list_metadata,list_update_edit).
subClass(phylogeny_based_extraction,tree_extraction_operation).
subClass(taxonomy_based_extraction,tree_extraction_operation).
subClass(tree_publifications,tree_support_studies).


%Define class of <Service Providers> Web Service methods components 
class(phylotastic_concept).
class(phylotastic_parameters).
class(phylotastic_data_structure).
class(phylotastic_resources).
class(phylotastic_data_format).
class(phylotastic_data_type).
class(phylotastic_components).
class(resource_SetOfThings).
class(resource_Object).
class(resource_SetOfNumbers).
class(resource_SetOfStrings).
class(resource_SetOfObjects).
class(resource_Document).
class(resource_Text).
class(resource_Image).
class(resource_URI).
class(resource_SetOfNames).
class(resource_SetOfURIs).
class(resource_PDF).
class(resource_MSDoc).
class(resource_String).
class(resource_Number).
class(resource_FreeText).
class(resource_SpeciesImage).
class(resource_contentURL).
class(resource_WebURL).
class(resource_SetOfScientificNames).
class(resource_Name).
class(resource_HTTPCode).
class(resource_ConnectionTime).
class(resource_SetOfResolvedName).
class(resource_SetOfTaxon).
class(resource_SetOfSciName).
class(resource_ScientificName).
class(resource_CountryName).
class(resource_resolvedName).
class(resource_taxon).
class(resource_sciName).


%Define subclass of <Service Provider> Web Service Concept 
subClass(phylotastic_parameters,phylotastic_concept).
subClass(phylotastic_data_structure,phylotastic_concept).
subClass(phylotastic_resources,phylotastic_concept).
subClass(phylotastic_data_format,phylotastic_concept).
subClass(phylotastic_data_type,phylotastic_concept).
subClass(phylotastic_components,phylotastic_concept).
subClass(resource_SetOfThings,phylotastic_resources).
subClass(resource_Object,phylotastic_resources).
subClass(resource_SetOfNumbers,resource_SetOfThings).
subClass(resource_SetOfStrings,resource_SetOfThings).
subClass(resource_SetOfObjects,resource_SetOfThings).
subClass(resource_Document,resource_Object).
subClass(resource_Text,resource_Object).
subClass(resource_Image,resource_Object).
subClass(resource_URI,resource_Object).
subClass(resource_Tree,resource_Object).
subClass(resource_SetOfNames,resource_SetOfStrings).
subClass(resource_SetOfURIs,resource_SetOfObjects).
subClass(resource_PDF,resource_Document).
subClass(resource_MSDoc,resource_Document).
subClass(resource_String,resource_Text).
subClass(resource_Number,resource_Text).
subClass(resource_FreeText,resource_Text).
subClass(resource_SpeciesImage,resource_Image).
subClass(resource_contentURL,resource_URI).
subClass(resource_WebURL,resource_URI).
subClass(resource_SetOfScientificNames,resource_SetOfNames).
subClass(resource_Name,resource_String).
subClass(resource_HTTPCode,resource_Number).
subClass(resource_ConnectionTime,resource_Number).
subClass(resource_SetOfResolvedName,resource_SetOfScientificNames).
subClass(resource_SetOfTaxon,resource_SetOfScientificNames).
subClass(resource_SetOfSciName,resource_SetOfScientificNames).
subClass(resource_ScientificName,resource_Name).
subClass(resource_CountryName,resource_Name).
subClass(resource_resolvedName,resource_ScientificName).
subClass(resource_taxon,resource_ScientificName).
subClass(resource_sciName,resource_ScientificName).


%Define instances of all OPERATIONs 
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,names_resolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,names_resolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET,names_resolution_operation).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST,names_resolution_operation).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET,taxon_to_species_operation).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET,tree_generation).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST,tree_generation).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST,species_url_operation).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET,species_url_operation).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_GET,species_images_operation).
isInstanceOf(phylotastic_GetImageURLsOfSpecies_EOL_POST,species_images_operation).
isInstanceOf(phylotastic_FindScientificNamesFromWeb_GNRD_GET,names_extraction_web).
isInstanceOf(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,names_extracion_text).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,taxon_to_species_by_genome).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,taxon_to_species_by_country).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET,taxonomy_based_extraction).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST,taxonomy_based_extraction).


instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET).
instance(phylotastic_GetPhylogeneticTree_OT_GET).
instance(phylotastic_GetPhylogeneticTree_OT_POST).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_POST).
instance(phylotastic_FindScientificNamesFromWeb_GNRD_GET).
instance(phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET).


%=======================================================================
%PART 3  : Define instances for Resources
%=======================================================================
% Define instances 
instance(phylotastic_scientific_names).
instance(image_of_cdao_species_tree).
instance(eol_species_information_urls).
instance(cdao_species_tree_leave_contains_image).
instance(free_text).
instance(phylotastic_scientific_name).
instance(phylotastic_TNRS_resolved_names).
instance(phylotastic_TNRS_resolved_name).
instance(eol_species_image).
instance(a_country_in_the_world).
instance(http_URL).
instance(eol_species_information_url).
instance(http_status_code_int).
instance(http_response_time).
instance(bio_taxon).
instance(bio_taxa).
instance(cdao_species_tree).


%Define instances of which class : all resources have to be instanced from <service_provide>_resources. and its selft can be instancef from class that defined what is it 
isInstanceOf(phylotastic_scientific_names,setOfObjects).
isInstanceOf(phylotastic_scientific_names,phylotastic_resources).
isInstanceOf(phylotastic_scientific_names,resource_SetOfSciName).
isInstanceOf(phylotastic_scientific_names,resource_SetOfScientificNames).
isInstanceOf(image_of_cdao_species_tree,phylotastic_resources).
isInstanceOf(eol_species_information_urls,setOfObjects).
isInstanceOf(eol_species_information_urls,phylotastic_resources).
isInstanceOf(eol_species_information_urls,resource_SetOfURIs).
isInstanceOf(cdao_species_tree_leave_contains_image,phylotastic_resources).
isInstanceOf(cdao_species_tree_leave_contains_image,resource_Tree).
isInstanceOf(cdao_species_tree_leave_contains_image,resource_imagesSpeciesTree).
isInstanceOf(free_text,phylotastic_resources).
isInstanceOf(free_text,resource_FreeText).
isInstanceOf(phylotastic_scientific_name,phylotastic_resources).
isInstanceOf(phylotastic_scientific_name,resource_ScientificName).
isInstanceOf(phylotastic_scientific_name,resource_sciName).
isInstanceOf(phylotastic_TNRS_resolved_names,setOfObjects).
isInstanceOf(phylotastic_TNRS_resolved_names,phylotastic_resources).
isInstanceOf(phylotastic_TNRS_resolved_names,resource_SetOfResolvedName).
isInstanceOf(phylotastic_TNRS_resolved_names,resource_SetOfScientificNames).
isInstanceOf(phylotastic_TNRS_resolved_name,phylotastic_resources).
isInstanceOf(phylotastic_TNRS_resolved_name,resource_ScientificName).
isInstanceOf(phylotastic_TNRS_resolved_name,resource_resolvedName).
isInstanceOf(eol_species_image,phylotastic_resources).
isInstanceOf(eol_species_image,resource_SpeciesImage).
isInstanceOf(a_country_in_the_world,phylotastic_resources).
isInstanceOf(a_country_in_the_world,resource_CountryName).
isInstanceOf(http_URL,phylotastic_resources).
isInstanceOf(http_URL,resource_URI).
isInstanceOf(http_URL,resource_WebURL).
isInstanceOf(eol_species_information_url,phylotastic_resources).
isInstanceOf(eol_species_information_url,resource_URI).
isInstanceOf(eol_species_information_url,resource_contentURL).
isInstanceOf(http_status_code_int,phylotastic_resources).
isInstanceOf(http_status_code_int,resource_HTTPCode).
isInstanceOf(http_response_time,phylotastic_resources).
isInstanceOf(http_response_time,resource_ConnectionTime).
isInstanceOf(bio_taxon,phylotastic_resources).
isInstanceOf(bio_taxon,resource_ScientificName).
isInstanceOf(bio_taxon,resource_taxon).
isInstanceOf(bio_taxa,setOfObjects).
isInstanceOf(bio_taxa,phylotastic_resources).
isInstanceOf(bio_taxa,resource_SetOfScientificNames).
isInstanceOf(bio_taxa,resource_SetOfTaxon).
isInstanceOf(cdao_species_tree,speciesTree).
isInstanceOf(cdao_species_tree,phylotastic_resources).
isInstanceOf(cdao_species_tree,resource_Tree).
isInstanceOf(cdao_species_tree,resource_speciesTree).


% Define Data Type and/OR data format of every instances in resources
resource_has_data_type(phylotastic_scientific_names,list_of_objects).
resource_list_has_element(phylotastic_scientific_names,phylotastic_scientific_name).
resource_has_data_type(image_of_cdao_species_tree,data_type_image).
resource_has_data_type(eol_species_information_urls,list_of_objects).
resource_list_has_element(eol_species_information_urls,eol_species_information_url).
resource_has_data_type(free_text,string).
resource_has_data_format(free_text,freeText).
resource_has_data_type(phylotastic_scientific_name,string).
resource_has_data_type(phylotastic_TNRS_resolved_names,list_of_objects).
resource_list_has_element(phylotastic_TNRS_resolved_names,phylotastic_TNRS_resolved_name).
resource_has_data_type(a_country_in_the_world,string).
resource_has_data_format(a_country_in_the_world,freeText).
resource_has_data_type(http_URL,string).
resource_has_data_type(http_status_code_int,integer).
resource_has_data_type(http_response_time,double).
resource_has_data_type(bio_taxon,string).
resource_has_data_format(bio_taxon,freeText).
resource_has_data_type(bio_taxa,list_of_objects).
resource_list_has_element(bio_taxa,bio_taxon).


%=======================================================================
%PART 4 : Define instances for components - that mapped name definitely 100% with WSDL components name
%=======================================================================
% Define instances 
instance(param_species).
instance(param_names).
instance(param_text).
instance(param_taxa).
instance(param_status_code).
instance(param_taxon).
instance(param_country).
instance(param_species_tree).
instance(param_execution_time).
instance(param_url).
instance(param_eol_species_information_urls_json).
instance(param_resolved_names).
instance(param_scientific_names_json).
instance(param_species_2).


% Define instances of which class : all resources have to be instanced from phylotastic_components - and its selft can be instancef from class that defined what is it
isInstanceOf(param_species,phylotastic_components).
isInstanceOf(param_names,phylotastic_components).
isInstanceOf(param_text,phylotastic_components).
isInstanceOf(param_taxa,phylotastic_components).
isInstanceOf(param_status_code,phylotastic_components).
isInstanceOf(param_taxon,phylotastic_components).
isInstanceOf(param_country,phylotastic_components).
isInstanceOf(param_species_tree,phylotastic_components).
isInstanceOf(param_execution_time,phylotastic_components).
isInstanceOf(param_url,phylotastic_components).
isInstanceOf(param_eol_species_information_urls_json,phylotastic_components).
isInstanceOf(param_resolved_names,phylotastic_components).
isInstanceOf(param_scientific_names_json,phylotastic_components).
isInstanceOf(param_species_2,phylotastic_components).


% Define Object Property IS-A that used for these components - Component is-a resource
component_is_a_resource(param_species,phylotastic_scientific_names).
component_is_a_resource(param_names,phylotastic_scientific_names).
component_is_a_resource(param_text,free_text).
component_is_a_resource(param_taxa,bio_taxa).
component_is_a_resource(param_status_code,http_status_code_int).
component_is_a_resource(param_taxon,bio_taxon).
component_is_a_resource(param_country,a_country_in_the_world).
component_is_a_resource(param_species_tree,cdao_species_tree).
component_is_a_resource(param_execution_time,http_response_time).
component_is_a_resource(param_url,http_URL).
component_is_a_resource(param_eol_species_information_urls_json,eol_species_information_urls).
component_is_a_resource(param_resolved_names,bio_taxa).
component_is_a_resource(param_resolved_names,phylotastic_TNRS_resolved_names).
component_is_a_resource(param_scientific_names_json,phylotastic_scientific_names).
component_is_a_resource(param_species_2,phylotastic_scientific_names).


% Define Data property hasParameterNameText for these components
component_hasParameterNameText(param_species,"species").
component_hasParameterNameText(param_names,"names").
component_hasParameterNameText(param_text,"text").
component_hasParameterNameText(param_taxa,"taxa").
component_hasParameterNameText(param_status_code,"status_code").
component_hasParameterNameText(param_taxon,"taxon").
component_hasParameterNameText(param_country,"country").
component_hasParameterNameText(param_species_tree,"newick").
component_hasParameterNameText(param_execution_time,"execution_time").
component_hasParameterNameText(param_url,"url").
component_hasParameterNameText(param_eol_species_information_urls_json,"species").
component_hasParameterNameText(param_resolved_names,"resolvedNames").
component_hasParameterNameText(param_scientific_names_json,"scientificNames").
component_hasParameterNameText(param_species_2,"species").


% Define particular Object Property hasDataFormat ; has_Annotation for some components for all Service Provider
component_has_data_format(param_species,application_json).
component_has_data_format(param_text,freeText).
component_has_data_format(param_taxon,freeText).
component_has_Annotation(param_species_tree,newickTree).
component_has_data_format(param_species_tree,newickTree).
component_has_data_format(param_eol_species_information_urls_json,application_json).
component_has_data_format(param_resolved_names,application_json).
component_has_data_format(param_scientific_names_json,application_json).


%=======================================================================
%PART 5 : Define instances for <Service Provider> data format in <Service Provider>_concept
%=======================================================================
% Define instances 
instance(application_x_www_urlencoded).
instance(freeText).
instance(application_json).
instance(application_xml).

isInstanceOf(application_x_www_urlencoded,phylotastic_data_format).
isInstanceOf(freeText,phylotastic_data_format).
isInstanceOf(application_json,phylotastic_data_format).
isInstanceOf(application_xml,phylotastic_data_format).


%=======================================================================
%PART 6 : Define instances for <Service Provider> data structure in <Service Provider>_concept
%=======================================================================
% Define instances 
instance(image_object).
instance(list_of_strings).
instance(list_of_objects).

isInstanceOf(image_object,phylotastic_data_structure).
isInstanceOf(list_of_strings,setOfCharacters).
isInstanceOf(list_of_strings,phylotastic_data_structure).
isInstanceOf(list_of_objects,setOfObjects).
isInstanceOf(list_of_objects,phylotastic_data_structure).

data_structure_list_has_Element_data_type(list_of_strings,string).
data_structure_list_has_Element_data_type(list_of_objects,defined_object).


%=======================================================================
%PART 7 : Define instances for <Service Provider> data type in <Service Provider>_concept
%=======================================================================
% Define instances 
instance(defined_object).
instance(integer).
instance(double).
instance(boolean).
instance(string).
instance(data_type_image).

isInstanceOf(defined_object,phylotastic_data_type).
isInstanceOf(integer,phylotastic_data_type).
isInstanceOf(double,phylotastic_data_type).
isInstanceOf(boolean,phylotastic_data_type).
isInstanceOf(string,phylotastic_data_type).
isInstanceOf(data_type_image,phylotastic_data_type).


%=======================================================================
%PART 8 : Define instances for <Service provider> parameters class in <Service Provider>_concept
%=======================================================================
% Define instances 
instance(phylotastic_GetPhylogeneticTree_OT_GET_Out).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In).
instance(phylotastic_FindScientificNames_FromText_GNRD_GET_In).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out).
instance(phylotastic_GetPhylogeneticTree_OT_GET_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out).
instance(phylotastic_GetPhylogeneticTree_OT_POST_In).
instance(phylotastic_FindScientificNames_FromText_GNRD_GET_Out).
instance(phylotastic_FindScientificNames_Web_GNRD_GET_Out).
instance(phylotastic_FindScientificNames_Web_GNRD_GET_IN).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out).
instance(phylotastic_GetPhylogeneticTree_OT_POST_Out).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In).

isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_FromText_GNRD_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,phylotastic_parameters).
isInstanceOf(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST_In,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_Web_GNRD_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_FindScientificNames_Web_GNRD_GET_IN,phylotastic_parameters).
isInstanceOf(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,phylotastic_parameters).
isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST_Out,phylotastic_parameters).
isInstanceOf(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,phylotastic_parameters).

operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
operation_has_Input_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_POST,phylotastic_ResolvedScientificNames_OT_TNRS_POST_In).
operation_has_Output_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_POST,phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out).
operation_has_Input_Parameter(phylotastic_GetAllSpeciesFromTaxon_OT_GET,phylotastic_GetAllSpeciesFromTaxon_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetAllSpeciesFromTaxon_OT_GET,phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out).
operation_has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out).
operation_has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_In).
operation_has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_Out).
operation_has_Input_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_POST,phylotastic_GetInformationURLsOfSpecies_EOL_POST_In).
operation_has_Output_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_POST,phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out).
operation_has_Input_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_GET,phylotastic_GetInformationURLsOfSpecies_EOL_GET_In).
operation_has_Output_Parameter(phylotastic_GetInformationURLsOfSpecies_EOL_GET,phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out).
operation_has_Input_Parameter(phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_IN).
operation_has_Output_Parameter(phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_Out).
operation_has_Input_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_In).
operation_has_Output_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_Out).
operation_has_Input_Parameter(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In).
operation_has_Output_Parameter(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out).
operation_has_Input_Parameter(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In).
operation_has_Output_Parameter(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out,param_species_tree).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In,param_scientific_names_json).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,param_resolved_names).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In,param_taxon).

parameter_has_Data_Format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In,param_taxon).

parameter_has_Data_Format(phylotastic_FindScientificNames_FromText_GNRD_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_In,param_text).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_species).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_OT_GET_Out,param_taxon).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,application_json).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_species).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_Out,param_taxon).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_GET_In,param_taxa).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In,param_species).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In,param_species_2).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,param_eol_species_information_urls_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,param_names).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In,param_scientific_names_json).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,param_resolved_names).
parameter_has_Component(phylotastic_ResolvedScientificNames_OT_TNRS_POST_Out,param_status_code).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,param_resolved_names).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,param_country).
parameter_has_Component(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In,param_taxon).

parameter_has_Data_Format(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,application_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,param_eol_species_information_urls_json).
parameter_has_Component(phylotastic_GetInformationURLsOfSpecies_EOL_POST_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_POST_In,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_In,param_resolved_names).

parameter_has_Data_Format(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,application_json).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_execution_time).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_scientific_names_json).
parameter_has_Component(phylotastic_FindScientificNames_FromText_GNRD_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_FindScientificNames_Web_GNRD_GET_Out,application_json).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_execution_time).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_scientific_names_json).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_FindScientificNames_Web_GNRD_GET_IN,x_www_urlencoded).
parameter_has_Component(phylotastic_FindScientificNames_Web_GNRD_GET_IN,param_url).

parameter_has_Data_Format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,application_json).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_species).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_status_code).
parameter_has_Component(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_Out,param_taxon).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,application_json).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,param_resolved_names).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_Out,param_status_code).

parameter_has_Data_Format(phylotastic_GetPhylogeneticTree_OT_POST_Out,application_json).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_Out,param_species_tree).
parameter_has_Component(phylotastic_GetPhylogeneticTree_OT_POST_Out,param_status_code).

parameter_has_Data_Format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,x_www_urlencoded).
parameter_has_Component(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In,param_names).



%=======================================================================
%PART 9 : Define support rules
%=======================================================================
subClass(X,Y) :- class(X), class(Y), class(Z), subClass(Z,Y), subClass(X,Z).
subClass(X,Y) :- class(X), class(Y), subClass(X,Z), equalClasses(Y,Z).
subClass(X,Y) :- class(X), class(Y), subClass(Z,Y), equalClasses(X,Z).
isInstanceOf(X,Y) :- class(Y), instance(X), class(Z), isInstanceOf(X,Z), subClass(Z,Y).
equalClasses(X,Y) :- equalClasses(Y,X), class(X), class(Y).


%=======================================================================
%PART 10 : Define composite utilitites - Define Resources
%=======================================================================
resource(Re) :- instance(Re), isInstanceOf(Re,phylotastic_resources).


%=======================================================================
%PART 11 : Define Operation, Parameter Input Output, Components, type and format for Planning Web Service Logic Programming
%=======================================================================
web_service(X) :- instance(X), isInstanceOf(X,Y), class(Y), subClass(Y,web_services_collection).
operation(X) :- instance(X), isInstanceOf(X,Y), class(Y), subClass(Y,operationClassification).
input_parameter(IN) :- operation(OP), operation_has_Input_Parameter(OP,IN).
output_parameter(OUT) :- operation(OP), operation_has_Output_Parameter(OP,OUT).
has_Input_Parameter(OP,IN) :- operation_has_Input_Parameter(OP,IN).
has_Output_Parameter(OP,OUT) :- operation_has_Output_Parameter(OP,OUT).

has_Input_Parameter_Component(IN,IN_COM_SEM) :- input_parameter(IN), parameter_has_Component(IN,IN_COM), component_is_a_resource(IN_COM,IN_COM_SEM).
has_Output_Parameter_Component(OUT,OUT_COM_SEM) :- output_parameter(OUT), parameter_has_Component(OUT,OUT_COM), component_is_a_resource(OUT_COM,OUT_COM_SEM).
input_parameter_component(IN_COM_SEM) :- has_Input_Parameter_Component(IN,IN_COM_SEM).
output_parameter_component(OUT_COM_SEM) :- has_Output_Parameter_Component(OUT, OUT_COM_SEM).

data_type(X) :- instance(X), isInstanceOf(X,phylotastic_data_structure).
data_format(X) :- instance(X), isInstanceOf(X,phylotastic_data_format).
data_type(X) :- instance(X), isInstanceOf(X,phylotastic_data_type).

has_Data_Type(COM_RES,DT) :- resource_has_data_type(COM_RES,DT), data_type(DT), resource(COM_RES).
has_Data_Type(RES,DT) :- resource(RES), isInstanceOf(RES,DT), class(DT), subClass(DT,tree).

has_Data_Format(RES,DF) :- resource(RES), data_format(X), component_has_data_format(COM,DF), component_is_a_resource(COM,RES).
has_Data_Format(RES,DF) :- resource(RES), class(DF), subClass(DF,cDAOAnnotation), component_has_data_format(COM,DF), component_is_a_resource(COM,RES).


%=======================================================================
%PART 12 : IMPORTANT : A part of planning - Defined Static Causal Laws = safistfy condition
%=======================================================================
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_OT_TNRS_POST_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_POST,phylotastic_ResolvedScientificNames_OT_TNRS_POST_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetAllSpeciesFromTaxon_OT_GET_In),Loop) :-  holds(planningHasComponent(bio_taxon),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetAllSpeciesFromTaxon_OT_GET,phylotastic_GetAllSpeciesFromTaxon_OT_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In),Loop) :-  holds(planningHasComponent(bio_taxon),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_FindScientificNames_FromText_GNRD_GET_In),Loop) :-  holds(planningHasComponent(free_text),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_GET_In),Loop) :-  holds(planningHasComponent(bio_taxa),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetInformationURLsOfSpecies_EOL_POST_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetInformationURLsOfSpecies_EOL_POST,phylotastic_GetInformationURLsOfSpecies_EOL_POST_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetInformationURLsOfSpecies_EOL_GET_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetInformationURLsOfSpecies_EOL_GET,phylotastic_GetInformationURLsOfSpecies_EOL_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_ResolvedScientificNames_GNR_TNRS_POST,phylotastic_ResolvedScientificNames_GNR_TNRS_POST_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In),Loop) :-  holds(planningHasComponent(a_country_in_the_world),Loop), holds(planningHasComponent(bio_taxon),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_POST_In),Loop) :-  holds(planningHasComponent(bio_taxa),Loop), holds(planningHasComponent(phylotastic_TNRS_resolved_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_In), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_FindScientificNames_Web_GNRD_GET_IN),Loop) :-  holds(planningHasComponent(http_URL),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_IN), Loop), step(Loop).
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In),Loop) :-  holds(planningHasComponent(phylotastic_scientific_names),Loop),  not -holds(planningHasInput(phylotastic_ws,phylotastic_ResolvedScientificNames_GNR_TNRS_GET,phylotastic_ResolvedScientificNames_GNR_TNRS_GET_In), Loop), step(Loop).


%=======================================================================
%PART 13 : Define Web Service
%=======================================================================
%Define class of web services 
class(web_services_collection).
class(commercialServices).
class(scienceServices).
class(utilityServices).
class(socialServices).
class(bioInformationServices).


%Define subclass of web service classes 
subClass(commercialServices,web_services_collection).
subClass(scienceServices,web_services_collection).
subClass(utilityServices,web_services_collection).
subClass(socialServices,web_services_collection).
subClass(bioInformationServices,scienceServices).


%Define instances of all WebServices 
isInstanceOf(phylotastic_ws,bioInformationServices).

instance(phylotastic_ws).


%Define hasOperation of Web Servivces 
has_Operation(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_POST).
has_Operation(phylotastic_ws,phylotastic_GetAllSpeciesFromTaxon_OT_GET).
has_Operation(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_GET).
has_Operation(phylotastic_ws,phylotastic_GetImageURLsOfSpecies_EOL_GET).
has_Operation(phylotastic_ws,phylotastic_GetImageURLsOfSpecies_EOL_POST).
has_Operation(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Operation(phylotastic_ws,phylotastic_GetInformationURLsOfSpecies_EOL_POST).
has_Operation(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_GET).
has_Operation(phylotastic_ws,phylotastic_GetInformationURLsOfSpecies_EOL_GET).
has_Operation(phylotastic_ws,phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET).
has_Operation(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET).
has_Operation(phylotastic_ws,phylotastic_ResolvedScientificNames_GNR_TNRS_GET).
has_Operation(phylotastic_ws,phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
has_Operation(phylotastic_ws,phylotastic_ResolvedScientificNames_GNR_TNRS_POST).
has_Operation(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_POST).


%Define data property of Web Servivces 
hasServiceDesDocumentURI(phylotastic_ws,"http://128.123.177.13/WSRegistry/sites/default/files/wsdl/Phylotastic_WS.wsdl^^http://www.w3.org/2001/XMLSchema#anyURI").
hasServiceNameText(phylotastic_ws,"phylotastic_ws").
hasServiceDescriptionText(phylotastic_ws,"List of all phylotastic web services").
hasServiceDesDocumentType(phylotastic_ws,"wsdl").



