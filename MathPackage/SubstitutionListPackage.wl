(* ::Package:: *)

 BeginPackage[ "SubstitutionListPackage`"]
 Needs["CompTypePackage`"]
 Needs["GenerateSubstitutionPackage`"]

  GenerateSubstitutionListOneRec::usage = 
	"GenerateSubstitutionListOneRec[varS, varsP, OneRecognizer] generates all substitutions from all One-Recognizer."

  Begin[ "Private`"]

  GenerateSubstitutionListOneRec[spaceS_,OneRecognizerList_]:=
Module[{sub,OneRecSubstitutionList}, OneRecSubstitutionList={};
For[index1=1,index1<=Length[spaceS],index1++,
For[index2=1,index2<=Length[OneRecognizerList],index2++,
If[CompatibleTypesOneRec[spaceS[[index1]][[3]],OneRecognizerList[[index2]][[2]][[3]]],
sub=GenerateSubstitutionOneRec[spaceS[[index1]][[1]],spaceS[[index1]][[2]],OneRecognizerList[[index2]]];
AppendTo[OneRecSubstitutionList,sub]]]];
 (*Print[OneRecSubstitutionList]; *)
Return[OneRecSubstitutionList]]

  End[]

  EndPackage[]






