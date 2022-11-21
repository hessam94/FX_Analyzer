(* ::Package:: *)

 BeginPackage[ "GenerateLoopInvRelOneRecPackage`"]
 Needs["CheckImplicationPackage`"]
 Needs["SubstitutionListPackage`"]

  GenerateLoopInvRelOne::usage = 
	"Generates the invariant relations of the loop using One-Recognizers."

  Begin[ "Private`"]

  GenerateLoopInvRelOne[vars_,stateS_, F_, OneRecList_, file_]:=
 
Module[{index,SubList,SubRec,newSubRec}, SubList=GenerateSubstitutionListOneRec[stateS,OneRecList]; 
(*Print[" GenerateLoopInvRelOneRecPackage Sublist = ",SubList];*)
Do[
(*Print[" ImpliOne Index: ", index];*)
(*SubRec = SubList[[index]];
newSubRec = SubRec[[3]]/.SubRec[[2]];*)
(*Print[" newSublist = ",newSubRec];*)
(*CheckImplication[vars,F,newSubRec,file],{index,Length[SubList]}];*)
CheckImplication[vars,F,SubList[[index]],file],{index,Length[SubList]}];

(*Print[" End ImpliOne "];*)
]

  End[]

  EndPackage[]


















