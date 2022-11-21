(* ::Package:: *)

 BeginPackage[ "CheckImplicationPackage`"]
 Needs["GenerateInvRelPackage`"]
Needs["AddFoundRecPackage`"]

  CheckImplication::usage = 
	"CheckImplication[Vars,F, codePat, file] checks whether function F implies the code pattern of the Recognizer. 
     If it does, it generates the corresponding invariant relation."

  Begin[ "Private`"]

  (*CheckImplication[vars_,F_, recog_, file_]:=*)
  CheckImplication[vars_,F_, codePat_, file_]:=
Module[{Res,diagnosis,boolRes}, 
(*Print[" Function = ",F];
Print[" codePat = ",codePat];
Print[vars];*)
(*Print[" codePat3 = ",codePat[[3]]];*)


(*Res = Resolve[ForAll[vars,Implies[F,recog]] , Reals];*)
(*Res = With[{varlocal = vars},F] ;*)



Res=FullSimplify[Implies[F,codePat[[1]]]];
(*Print[" Checking implication : ", F , " -->  ", codePat[[1]]];
Print[" imply result:" , Res];*)
boolRes=TrueQ[Res];
diagnosis=Catch[If[boolRes==True, GenerateInvRelOneRec[codePat[[2]],codePat[[3]], file]]];
(*diagnosis=Catch[If[boolRes==True, AddFoundRec[recog, file]]];*)
Return[diagnosis]]

  End[]

  EndPackage[]













































