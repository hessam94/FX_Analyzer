(* ::Package:: *)

 BeginPackage[ "GenerateSubstitutionPackage2`"]

  GenerateSubstitutionTwoRec::usage = 
	"GenerateSubstitutionTwoRec[varS1_,varsP1_,varS2_,varsP2_,TwoRecognizer_] generates a substitution from a Pne-Recognizer."

  Begin[ "Private`"]

  GenerateSubstitutionTwoRec[varS1_,varsP1_,varS2_,varsP2_,TwoRecognizer_]:=
Module[{substitution},substitution={Part[TwoRecognizer,1]/.{TwoRecognizer[[2]][[1]][[1]]->varS1,
        TwoRecognizer[[2]][[1]][[2]]->varsP1,TwoRecognizer[[2]][[2]][[1]]->varS2,
        TwoRecognizer[[2]][[2]][[2]]->varsP2},{TwoRecognizer[[2]][[1]][[1]]->varS1,
       TwoRecognizer[[2]][[1]][[2]]->varsP1,
        TwoRecognizer[[2]][[2]][[1]]->varS2,TwoRecognizer[[2]][[2]][[2]]->varsP2},TwoRecognizer[[3]]}; 
        Return[substitution]]

  End[]

  EndPackage[]






