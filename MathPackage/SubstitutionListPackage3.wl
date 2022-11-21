(* ::Package:: *)

 BeginPackage[ "SubstitutionListPackage3`"]
 Needs[ "CompTypePackage3`"]
 Needs["GenerateSubstitutionPackage3`"]

  GenerateSubstitutionListThreeRec::usage = 
	"GenerateSubstitutionListThreeRec[spaceS_,ThreeRecognizerList_] generates all substitutions from 
     all ThreeRecognizers."

  Begin[ "Private`"]

  GenerateSubstitutionListThreeRec[spaceS_,ThreeRecognizerList_]:=
Module[{sub,ThreeRecSubstitutionList, index1, index2, index3, index4,comp}, 
ThreeRecSubstitutionList={};
For[index1=1,index1<=Length[spaceS],index1++,
For[index2=1,index2<=Length[spaceS],index2++,
If[index1!=index2,
For[index3=1,index3<=Length[spaceS],index3++,
If[index3!=index1 && index3!=index2,
For[index4=1,index4<=Length[ThreeRecognizerList],index4++,  
comp=CampatibleTypeThreeRec[spaceS[[index1]][[3]],spaceS[[index2]][[3]],spaceS[[index3]][[3]],ThreeRecognizerList[[index4]][[2]][[1]][[3]],
ThreeRecognizerList[[index4]][[2]][[2]][[3]],ThreeRecognizerList[[index4]][[2]][[3]][[3]]];
 If[comp==True,
sub=GenerateSubstitutionThreeRec[spaceS[[index1]][[1]],spaceS[[index1]][[2]],spaceS[[index2]][[1]],spaceS[[index2]][[2]],
spaceS[[index3]][[1]],spaceS[[index3]][[2]], ThreeRecognizerList[[index4]]];
AppendTo[ThreeRecSubstitutionList,sub]
]
]]]]
]];
Return[ThreeRecSubstitutionList]]

  End[]

  EndPackage[]




































