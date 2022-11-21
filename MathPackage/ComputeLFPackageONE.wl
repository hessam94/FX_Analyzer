(* ::Package:: *)

 BeginPackage[ "ComputeLFPackageONE`"]
 Needs["GenerateLoopInvRelRecPackage`"]


  ComputeLFONE::usage = 
	"computes the loop function of just one with three input paramters, condition , elem and body."

  Begin[ "Private`"]

ComputeLFONE[vars_,stateS_, t1_, F1_, OneRecList_, TwoRecList_, ThreeRecList_, file1_]:=
Module[{L, LF1}, 
(* compute the function of the first loop *)
(*Print[" vars1 = ",vars];*)

GenerateLoopInvRelRec[vars,stateS, t1, F1, OneRecList, TwoRecList, ThreeRecList, file1];

(* Run Mathematica on the generated system *)
filename = FileNameJoin[{Directory[],"MathematicaOutputInvR.nb"}];
(*LF1 = Read[filename];*)
(*LF1 = Import[filename,"Text"];*)
LF1 = ToExpression[StringDelete[ReadString[filename],"\n"|"\r"]];
(*Close[filename];*)
(*nbb=NotebookOpen[FileNameJoin[{Directory[],"MathematicaOutputInvR.nb"}],Visible->False];
LF1=NotebookEvaluate[nbb,InsertResults->True];
NotebookClose[nbb];*)
(*Print[" invr = ",LF1];*)
(* compute the function of the second loop *)

(* Run Mathematica on the generated system *)

Return[LF1];
]

  End[]

  EndPackage[]




































