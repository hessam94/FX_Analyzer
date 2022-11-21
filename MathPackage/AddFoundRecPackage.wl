(* ::Package:: *)

 BeginPackage[ "AddFoundRecPackage`"]

  AddFoundRec::usage = 
	"AddFoundRec[subst, file] generates an invariant Relation from a One-Recognizer and writes it in file."

  Begin[ "Private`"]

  AddFoundRec[subst_,  file_]:=
Module[{loopInvRel}, loopInvRel= subst;

(*WriteString[file,loopInvRel];*) 
Export[file,loopInvRel]; 
WriteString[file," && "];
(* Print[" The generated invariat is written in the file "] *)

]

  End[]

  EndPackage[]
























