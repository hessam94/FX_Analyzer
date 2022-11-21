(* ::Package:: *)

 BeginPackage[ "SubstitutionListPackage2`"]
 Needs[ "CompTypePackage2`"]
 Needs["GenerateSubstitutionPackage2`"]

  GenerateSubstitutionListTwoRec::usage = 
	"GenerateSubstitutionListTwoRec[spaceS_,TwoRecognizerList_] generates all substitutions from 
     all TwoRecognizers."

  Begin[ "Private`"]

  GenerateSubstitutionListTwoRec[spaceS_,TwoRecognizerList_]:=
Module[{sub,TwoRecSubstitutionList, index1, index2, index3}, TwoRecSubstitutionList={};
For[index1=1,index1<=Length[spaceS],index1++,
For[index2=1,index2<=Length[spaceS],index2++,
If[index1!=index2,
For[index3=1,index3<=Length[TwoRecognizerList],index3++, 
If[CampatibleTypeTwoRec[spaceS[[index1]][[3]],spaceS[[index2]][[3]],TwoRecognizerList[[index3]][[2]][[1]][[3]],
TwoRecognizerList[[index3]][[2]][[2]][[3]]],
sub=GenerateSubstitutionTwoRec[spaceS[[index1]][[1]],spaceS[[index1]][[2]],spaceS[[index2]][[1]],spaceS[[index2]][[2]],
TwoRecognizerList[[index3]]];
AppendTo[TwoRecSubstitutionList,sub]]]]]];
Return[TwoRecSubstitutionList]]

  End[]

  EndPackage[]





















