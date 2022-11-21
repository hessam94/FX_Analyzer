(* ::Package:: *)

 BeginPackage[ "GenerateLoopInvRelThreeRecPackage`"]
 Needs["CheckImplicationPackage`"]
 Needs["SubstitutionListPackage3`"]

  GenerateLoopInvRelThree::usage = 
	"Generates the invariant relations of the loop using Three-Recognizers."

  Begin[ "Private`"]

  GenerateLoopInvRelThree[vars_,stateS_, F_, ThreeRecList_, file_]:=
Module[{index,SubList,SubRec,newSubRec}, 
SubList=GenerateSubstitutionListThreeRec[stateS,ThreeRecList]; 

Do[
(*Print[" Implithree Index: ", index];*)
(*second impliy approach*)
(*SubRec = SubList[[index]];
newSubRec = SubRec[[3]]/.SubRec[[2]];*)
(*Print[" newSublist = ",newSubRec];*)
(*CheckImplication[vars,F,newSubRec,file],{index,Length[SubList]}]*)
(*Print["done"];*)
CheckImplication[vars,F,SubList[[index]],file],{index,Length[SubList]}]
]
  End[]

  EndPackage[]






