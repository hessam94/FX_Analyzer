(* ::Package:: *)

 BeginPackage[ "ComputeLFPackage`"]
 Needs["GenerateLoopInvRelRecPackage`"]


  ComputeLF::usage = 
	"computes the loop function of nested loop (level =2)."

  Begin[ "Private`"]

ComputeLF[stateS_, t1_, t2_, F1_, F2_, OneRecList_, TwoRecList_, ThreeRecList_, file1_, file2_]:=
Module[{L, LF1, LF2}, 
(* compute the function of the first loop *)
GenerateLoopInvRelRec[stateS, t1, F1, OneRecList, TwoRecList, ThreeRecList, file1];

(* Run Mathematica on the generated system *)

nbb=NotebookOpen[FileNameJoin[{Directory[],"MathematicaOutputInvR.nb"}],Visible->False];
LF1=NotebookEvaluate[nbb,InsertResults->True];
NotebookClose[nbb];
Print[" LF1 = ",LF1];
(* compute the function of the second loop *)
L=F2&&LF1;
Print[" L= F2 && LF1 ",L];
GenerateLoopInvRelRec[stateS, t2, L, OneRecList, TwoRecList, ThreeRecList, file2];

(* Run Mathematica on the generated system *)

nbb=NotebookOpen[FileNameJoin[{Directory[],"MathematicaOutputInvR2.nb"}],Visible->False];
LF2=NotebookEvaluate[nbb,InsertResults->True];
NotebookClose[nbb];


Return[LF2];
]

  End[]

  EndPackage[]





















