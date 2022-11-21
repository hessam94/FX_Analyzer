(* ::Package:: *)

 BeginPackage[ "CompTypePackage2`"]

  CampatibleTypeTwoRec::usage = 
	"CampatibleTypeTwoRec[typeStm1_,typeStm2_,typeRec1_,typeRec2_] returns TRUE if the type of the variables
    typeStm1 and  typeStm2 is 
     compatible with the type typeRec1 and typeRec2 of the variables in the TwoRecognizer."

  Begin[ "Private`"]

  CampatibleTypeTwoRec[typeStm1_,typeStm2_,typeRec1_,typeRec2_]:=
   Module[{resType}, 
If[(typeStm1==typeRec1&&typeStm2==typeRec2)||(typeStm2==typeRec1&&typeStm1==typeRec2)
||(typeRec1=="real"&&typeStm1=="int"&&typeRec2=="real"&&typeStm2=="int")
||(typeRec1=="real"&&typeStm1=="int"&&typeRec2=="real"&&typeStm2=="real")
||(typeRec1=="real"&&typeStm1=="real"&&typeRec2=="real"&&typeStm2=="int")
||(typeRec1=="int"&&typeStm1=="int"&&typeRec2=="real"&&typeStm2=="int")
||(typeRec1=="real"&&typeStm1=="int"&&typeRec2=="int"&&typeStm2=="int"),
  resType:=True,resType:=False]; Return[resType]]

  End[]

  EndPackage[]












