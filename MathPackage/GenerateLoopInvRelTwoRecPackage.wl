(* ::Package:: *)

 BeginPackage[ "GenerateLoopInvRelTwoRecPackage`"]
 Needs["CheckImplicationPackage`"]
 Needs["SubstitutionListPackage2`"]

  GenerateLoopInvRelTwo::usage = 
	"Generates the invariant relations of the loop using Two-Recognizers."

  Begin[ "Private`"]

  GenerateLoopInvRelTwo[vars_,stateS_, F_, TwoRecList_, file_]:=
Module[{index,SubList,SubRec,newSubRec}, 
(*Print[" GenerateLoopInvRelTwoRecPackageBeforeCall Sublist2 = ",TwoRecList];*)
SubList=GenerateSubstitutionListTwoRec[stateS,TwoRecList]; 
(*Print[" Je suis dans GenerateTwo et Sublist 2 =  ", SubList];*)
(*Print[" GenerateLoopInvRelTwoRecPackage Sublist2 = ",SubList];*)
Do[
(*Print[" ImpliTwo Index: ", index];
SubRec = SubList[[index]];
Print["subrec Two:" , SubRec];*)
(*newSubRec = SubRec[[3]]/.SubRec[[2]];*)
(*Print[" newSublist = ",newSubRec];*)
(*CheckImplication[vars,F,newSubRec,file],{index,Length[SubList]}] this is for second approach imply with recog directly*)
CheckImplication[vars,F,SubList[[index]],file],{index,1,Length[SubList]}]

]

  End[]

  EndPackage[]







































