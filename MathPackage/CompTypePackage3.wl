(* ::Package:: *)

 BeginPackage[ "CompTypePackage3`"]

  CampatibleTypeThreeRec::usage = 
	"CampatibleTypeThreeRec[typeStm1_,typeStm2_, typeStm3_, typeRec1_,typeRec2_, typeRec3_] returns TRUE if the type of the variables
    typeStm1 ,  typeStm2 and typeStm3 is 
     compatible with the type typeRec1 , typeRec2 and typeRec3 of the variables in the ThreeRecognizer."

  Begin[ "Private`"]

  CampatibleTypeThreeRec[typeStm1_,typeStm2_, typeStm3_, typeRec1_,typeRec2_, typeRec3_]:=
   Module[{resType}, 
If[(typeStm1==typeRec1 && typeStm2==typeRec2 && typeStm3==typeRec3)||
(typeStm1==typeRec1 && typeStm2==typeRec3 && typeStm3==typeRec2)||
(typeStm1==typeRec2 && typeStm2==typeRec1 && typeStm3==typeRec3)||
(typeStm1==typeRec2 && typeStm2==typeRec3 && typeStm3==typeRec1)||
(typeStm1==typeRec3 && typeStm2==typeRec1 && typeStm3==typeRec2)||
(typeStm1==typeRec3 && typeStm2==typeRec2 && typeStm3==typeRec1)||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="real")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="real" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="real" && typeStm3=="real")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="real" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="real" && typeStm2=="int" && typeStm3=="real")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="real" && typeStm1=="real" && typeStm2=="real" && typeStm3=="int")||
(typeRec1=="int" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="int" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="real")||
(typeRec1=="int" && typeRec2=="real" && typeRec3=="real" && typeStm1=="int" && typeStm2=="real" && typeStm3=="int")||
(typeRec1=="int" && typeRec2=="int" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="int" && typeRec2=="int" && typeRec3=="real" && typeStm1=="int" && typeStm2=="real" && typeStm3=="int")||
(typeRec1=="int" && typeRec2=="int" && typeRec3=="real" && typeStm1=="int" && typeStm2=="real" && typeStm3=="real")||
(typeRec1=="int" && typeRec2=="real" && typeRec3=="int" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="int" && typeRec3=="int" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="int" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="int" && typeRec3=="real" && typeStm1=="int" && typeStm2=="int" && typeStm3=="real")||
(typeRec1=="real" && typeRec2=="int" && typeRec3=="real" && typeStm1=="real" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="int" && typeStm1=="int" && typeStm2=="int" && typeStm3=="int")||
(typeRec1=="real" && typeRec2=="real" && typeRec3=="int" && typeStm1=="real" && typeStm2=="int" && typeStm3=="int"),
resType=True,resType=False]; 
Return[resType]]

  End[]

  EndPackage[]





















