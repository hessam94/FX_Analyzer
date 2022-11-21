(* ::Package:: *)

 BeginPackage[ "GenerateSubstitutionPackage`"]

  GenerateSubstitutionOneRec::usage = 
	"GenerateSubstitutionOneRec[varS, varsP, OneRecognizer] generates a substitution from a Pne-Recognizer."

  Begin[ "Private`"]

  GenerateSubstitutionOneRec[varS_,varsP_,OneRecognizer_]:=
Module[{substitution}, substitution={OneRecognizer[[1]]/.{OneRecognizer[[2]][[1]]->varS,
OneRecognizer[[2]][[2]]->varsP},
{OneRecognizer[[2]][[1]]->varS,OneRecognizer[[2]][[2]]->varsP},OneRecognizer[[3]]}; 
Return[substitution]]

  End[]

  EndPackage[]



