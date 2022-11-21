(* ::Package:: *)

 BeginPackage[ "GenerateInvRelPackage`"]

  GenerateInvRelOneRec::usage = 
	"GenerateInvRelOneRec[subst, R, file] generates an invariant Relation from a One-Recognizer and writes it in file."

  Begin[ "Private`"]

  GenerateInvRelOneRec[subst_, R_, file_]:=
Module[{loopInvRel}, loopInvRel=R/.subst;
Print[" imply result:" , loopInvRel];
Write[file,loopInvRel]; 
WriteString[file," && "];
(* Print[" The generated invariat is written in the file "] *)

]

  End[]

  EndPackage[]
























