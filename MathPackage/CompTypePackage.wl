(* ::Package:: *)

 BeginPackage[ "CompTypePackage`"]

  CompatibleTypesOneRec::usage = 
	"CompatibleTypesOneRec[typeStm,typeRec] returns TRUE if the type of the variable typeStm is 
     compatible with the type typeRec of the variable in the OneRecognizer."

  Begin[ "Private`"]

  CompatibleTypesOneRec[typeStm_,typeRec_]:=
   Module[{resType},If[typeStm==typeRec||(typeRec=="real"&&typeStm=="int"),resType:=True,resType:=False]; Return[resType]]

  End[]

  EndPackage[]









