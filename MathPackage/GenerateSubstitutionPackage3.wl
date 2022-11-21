(* ::Package:: *)

 BeginPackage[ "GenerateSubstitutionPackage3`"]

  GenerateSubstitutionThreeRec::usage = 
	"GenerateSubstitutionThreeRec[varS1_,varsP1_,varS2_,varsP2_, varS3_,varsP3_, ThreeRecognizer_] generates 
    a substitution from a Three-Recognizer."

  Begin[ "Private`"]

  GenerateSubstitutionThreeRec[varS1_,varsP1_,varS2_,varsP2_, varS3_,varsP3_, ThreeRecognizer_]:=
Module[{substitution},substitution={Part[ThreeRecognizer,1]/.{Part[Part[Part[ThreeRecognizer,2],1],1]->varS1,
Part[Part[Part[ThreeRecognizer,2],1],2]->varsP1,Part[Part[Part[ThreeRecognizer,2],2],1]->varS2,
Part[Part[Part[ThreeRecognizer,2],2],2]->varsP2,Part[Part[Part[ThreeRecognizer,2],3],1]->varS3,
Part[Part[Part[ThreeRecognizer,2],3],2]->varsP3},{Part[Part[Part[ThreeRecognizer,2],1],1]->varS1,
Part[Part[Part[ThreeRecognizer,2],1],2]->varsP1,Part[Part[Part[ThreeRecognizer,2],2],1]->varS2,
Part[Part[Part[ThreeRecognizer,2],2],2]->varsP2,Part[Part[Part[ThreeRecognizer,2],3],1]->varS3,
Part[Part[Part[ThreeRecognizer,2],3],2]->varsP3},Part[ThreeRecognizer,3]}; 
Return[substitution]]

  End[]

  EndPackage[]






