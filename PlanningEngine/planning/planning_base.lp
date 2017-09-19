%========================================================================
%========================================================================
% PROCESS PART : Define Relationships
%========================================================================
%has_Operation(X,Y) :- is_Operation_Of(Y,X), web_service(X), operation(Y).
is_Operation_Of(X,Y) :- has_Operation(Y,X), web_service(Y), operation(X).

%has_Input_Parameter(X,Y) :- is_Input_Parameter_Of(Y,X), operation(X), input_parameter(Y).
is_Input_Parameter_Of(X, Y) :- has_Input_Parameter(Y,X), operation(Y), input_parameter(X).

%has_Output_Parameter(X,Y) :- is_Output_Parameter_Of(Y,X), operation(X), output_parameter(Y).
is_Output_Parameter_Of(X, Y) :- has_Output_Parameter(Y,X), operation(Y), output_parameter(X).

%has_Input_Parameter_Component(X,Y) :- is_Input_Parameter_Component_Of(Y, X), input_parameter(X), input_parameter_component(Y).
is_Input_Parameter_Component_Of(X, Y) :- has_Input_Parameter_Component(Y, X), input_parameter(Y), input_parameter_component(X).

%has_Output_Parameter_Component(X,Y) :- is_Output_Parameter_Component_Of(Y, X), output_parameter(X), output_parameter_component(Y).
is_Output_Parameter_Component_Of(X, Y) :- has_Output_Parameter_Component(Y, X), output_parameter(Y), output_parameter_component(X).

operation_has_input_components(OP,I,IC) :- operation(OP), input_parameter(I), input_parameter_component(IC), has_Input_Parameter(OP,I), has_Input_Parameter_Component(I,IC).
operation_has_output_components(OP,O,OC) :- operation(OP), output_parameter(O), output_parameter_component(OC), has_Output_Parameter(OP,O), has_Output_Parameter_Component(O,OC).
%========================================================================
% QUERY PART : Query objects
%========================================================================
list_WS_Input_Params(X, M, Y ,L) :- web_service(X), input_parameter_component(Y), has_Input_Parameter_Component(Z,Y), input_parameter(Z), has_Input_Parameter(M,Z), operation(M), has_Operation(X, M), data_type(L), has_Data_Type(Y, L).
list_WS_Output_Params(X, M, Y, L) :- web_service(X), output_parameter_component(Y), has_Output_Parameter_Component(Z,Y), output_parameter(Z), has_Output_Parameter(M,Z), operation(M), has_Operation(X, M), data_type(L), has_Data_Type(Y, L).

explore_Input_Components(IN, IC, DT, DF) :- input_parameter(IN), input_parameter_component(IC), data_type(DT), data_format(DF), has_Input_Parameter_Component(IN,IC), has_Data_Type(IC,DT), has_Data_Format(IC,DF).
explore_Output_Components(ON, OC, DT, DF) :- output_parameter(ON), output_parameter_component(OC), data_type(DT), data_format(DF), has_Output_Parameter_Component(ON,OC), has_Data_Type(OC,DT), has_Data_Format(OC,DF).
%========================================================================
% PLANNING PART : Build WorkFlow
%========================================================================
#const n = 3.
step(0..n).

%------------------------------------------------------------------------
% ACTION LANGUAGE B DECLARATION
%------------------------------------------------------------------------
% FLUENT
%    planningHasInput(WS,OP,I) : denote that current time, we are having input I, O is input_parameter
%    planningHasOutput(WS,OP,O) : denote that current time, we are having ouput O, O is output_parameter
%    planningHasComponent(C) : denote that current time, we are having parameter component C; C can be input_parameter_component or output_parameter_component
% ACTION
%    run_WS_Operation(WS,OP,I,O) : run operation OP of Web Service WS with input I and return output O ( I is input_parameter = set of input_parameter_componennt)
%								   O is out_parameter = set of out_parameter_component
% DYNAMIC CAUSAL LAW
%	 run_WS_Operation(WS,OP,I,O) causes planningHasOutput(WS,OP,O) if planningHasInput(WS,OP,I)
% STATIC CAUSAL LAW
%    planningHasInput(WS,OP,I) if planningHasComponent(C) for all input_parameter_component C in input_parameter I
%    planningHasComponent(C) if planningHasOutput(WS,OP,O) and C is output_parameter_component of ouput_parameter O
% EXECUTABLE
%    executable run_WS_Operation(WS,OP,I,O) if planningHasInput(WS,OP,I)
%------------------------------------------------------------------------
% 1. Defined Fluents
%------------------------------------------------------------------------
fluent(inertial, planningHasComponent(X)) :- input_parameter_component(X).
fluent(inertial, planningHasComponent(X)) :- output_parameter_component(X).
fluent(inertial, planningHasInput(WS,OP,I)) :- web_service(WS), operation(OP), input_parameter(I), has_Operation(WS,OP), has_Input_Parameter(OP,I).
fluent(inertial, planningHasOutput(WS,OP,O)) :- web_service(WS), operation(OP), output_parameter(O), has_Operation(WS,OP), has_Output_Parameter(OP,O).
%------------------------------------------------------------------------
% 2. Defined Action
%------------------------------------------------------------------------
action(run_WS_Operation(WS,OP,I,O)) :- web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).
%------------------------------------------------------------------------
% 3. Defined Defined Dynamic Causal Law
%------------------------------------------------------------------------
holds(planningHasOutput(WS,OP,O), Loop+1) :- occurs(run_WS_Operation(WS,OP,I,O),Loop), holds(planningHasInput(WS,OP,I), Loop),step(Loop), Loop<=n, web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).
% Rule nay can kiem tra lai can than IMPORTANT
-holds(planningHasInput(WS,OP,I), Loop+1) :- occurs(run_WS_Operation(WS,OP,I,O),Loop), holds(planningHasInput(WS,OP,I), Loop) ,step(Loop), Loop<=n, web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).
%------------------------------------------------------------------------
% 4. Defined Static Causal Law
%------------------------------------------------------------------------
% PART 1 : Defined in Ontology Base
%holds(planningHasComponent(bio_taxa),Loop) :- holds(planningHasComponent(scientific_names),Loop).

% PART 2 :
%holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(http_response_time),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(http_response_time),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(phylotastic_scientific_names),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNames_FromText_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(phylotastic_scientific_names),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_FindScientificNamesFromWeb_GNRD_GET,phylotastic_FindScientificNames_Web_GNRD_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(cdao_species_tree),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(cdao_species_tree),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_GetPhylogeneticTree_OT_POST,phylotastic_GetPhylogeneticTree_OT_POST_Out), Loop), step(Loop).
%holds(planningHasComponent(bio_taxa),Loop) :- holds(planningHasOutput(phylotastic_ws,phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out), Loop), step(Loop).
%holds(planningHasComponent(phylotastic_TNRS_resolved_names),Loop) :- holds(planningHasOutput(phylotastic_ws,resolveScientificNames_OT_TNRS_GET,resolveScientificNames_OT_TNRS_Out), Loop), step(Loop).
%-------------------------------------------------------------------------
% PART 2 :
holds(planningHasInput(WS,OP,I),Loop) :- web_service(WS), operation(OP), input_parameter(I),  has_Input_Parameter(OP,I), has_Operation(WS, OP), step(Loop),holds(satisfy_precondition(I),Loop), Loop <=n.
-holds(planningHasInput(WS,OP,I),Loop) :- not holds(planningHasInput(WS,OP,I),Loop), web_service(WS), operation(OP), input_parameter(I), has_Operation(WS,OP), has_Input_Parameter(OP,I), step(Loop), Loop <= n.
-holds(planningHasOutput(WS,OP,O),Loop) :- not holds(planningHasOutput(WS,OP,O),Loop), web_service(WS), operation(OP), output_parameter(O), has_Operation(WS,OP), has_Output_Parameter(OP,O), step(Loop), Loop <= n.

holds(planningHasComponent(C),Loop) :- holds(planningHasOutput(WS,OP,O),Loop), web_service(WS), operation(OP), output_parameter(O), output_parameter_component(C), has_Output_Parameter_Component(O,C), has_Operation(WS,OP), has_Output_Parameter(OP,O) , step(Loop), Loop <= n.
-holds(planningHasComponent(C),Loop) :- not holds(planningHasComponent(C),Loop), input_parameter_component(C) ,step(Loop), Loop <= n.
-holds(planningHasComponent(C),Loop) :- not holds(planningHasComponent(C),Loop), output_parameter_component(C) ,step(Loop), Loop <= n.
%------------------------------------------------------------------------
% 5. Defined Executable
%------------------------------------------------------------------------
-occurs(run_WS_Operation(WS,OP,I,O),Loop) :- -holds(planningHasInput(WS,OP,I), Loop), web_service(WS), operation(OP), input_parameter(I), output_parameter(O), step(Loop).
-occurs(run_WS_Operation(WS,OP,I,O),Loop) :- not holds(planningHasInput(WS,OP,I), Loop), web_service(WS), operation(OP), input_parameter(I), output_parameter(O), step(Loop).
%------------------------------------------------------------------------
% 6. Inertial Axioms
%------------------------------------------------------------------------
holds(planningHasComponent(X), I+1) :- holds(planningHasComponent(X),I), not -holds(planningHasComponent(X),I+1), input_parameter_component(X), step(I), I < n, fluent(inertial, planningHasComponent(X)).
holds(planningHasComponent(X), I+1) :- holds(planningHasComponent(X),I), not -holds(planningHasComponent(X),I+1), output_parameter_component(X), step(I), I < n, fluent(inertial, planningHasComponent(X)).

-holds(planningHasComponent(X), I+1) :- -holds(planningHasComponent(X), I), not holds(planningHasComponent(X), I+1), input_parameter_component(X), step(I), I < n, fluent(inertial,planningHasComponent(X)).
-holds(planningHasComponent(X), I+1) :- -holds(planningHasComponent(X), I), not holds(planningHasComponent(X), I+1), output_parameter_component(X), step(I), I < n, fluent(inertial,planningHasComponent(X)).

%holds(planningHasInput(WS,OP,I), Loop+1) :- holds(planningHasInput(WS,OP,I),Loop), not -holds(planningHasInput(WS,OP,I), Loop+1), input_parameter(I), step(Loop), Loop <= n, fluent(inertial, planningHasInput(WS,OP,I)).
%-holds(planningHasInput(WS,OP,I), Loop+1) :- -holds(planningHasInput(WS,OP,I), Loop), not holds(planningHasInput(WS,OP,I), Loop+1), input_parameter(I), step(Loop), Loop < n, fluent(inertial, planningHasInput(WS,OP,I)).

%holds(planningHasOutput(WS,OP,O), Loop+1) :- holds(planningHasOutput(WS,OP,O),Loop), not -holds(planningHasOutput(WS,OP,O), Loop+1), output_parameter(O), step(Loop), Loop <= n, fluent(inertial, planningHasOutput(WS,OP,O)).
%-holds(planningHasOutput(WS,OP,O), Loop+1) :- -holds(planningHasOutput(WS,OP,O), Loop), not holds(planningHasOutput(WS,OP,O), Loop+1), output_parameter(O), step(Loop), Loop < n, fluent(inertial, planningHasOutput(WS,OP,O)).
%------------------------------------------------------------------------
% 7. CWA for action
%------------------------------------------------------------------------
-occurs(A,I) :- not occurs(A,I), step(I), action(A).
%------------------------------------------------------------------------
% 9. Goal State
%------------------------------------------------------------------------
success :- goal(I), I <= n, step(I).
:- not success.
1{occurs(A,I):action(A)}1 :- step(I), not goal(I), I < n.
:- action(A1), action(A2), occurs(A1,I), occurs(A2,I), A1 != A2, step(I).
%------------------------------------------------------------------------
%========================================================================
% END PROCESS PART
%========================================================================
%#show list_WS_Input_Params/3.
%#show list_WS_Output_Params/3.
%#show holds/2.
%#show web_service/1.
%#show operation/1.
%#show operation_has_input_components/3.
%#show operation_has_output_components/3.
%#show fluent/2.
#show occurs/2.
%#show goal/1.
%#show explore_Input_Components/4.
%#show explore_Output_Components/4.


