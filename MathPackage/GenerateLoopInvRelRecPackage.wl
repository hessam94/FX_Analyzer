(* ::Package:: *)

 BeginPackage[ "GenerateLoopInvRelRecPackage`"]
 Needs["GenerateLoopInvRelOneRecPackage`"]
 Needs["GenerateLoopInvRelTwoRecPackage`"]
Needs["GenerateLoopInvRelThreeRecPackage`"]

  GenerateLoopInvRelRec::usage = 
	"Generates the invariant relations of the loop using all Recognizers."

  Begin[ "Private`"]

  GenerateLoopInvRelRec[vars_,stateS_, t_, F_, OneRecList_, TwoRecList_, ThreeRecList_, file_]:=
Module[{index,SubList}, 

(*WriteString[file," Reduce[ "];*) 

GenerateLoopInvRelOne[vars,stateS, F, OneRecList, file];
If[Length[stateS]>=2, GenerateLoopInvRelTwo[vars,stateS, F, TwoRecList, file]];
If[Length[stateS]>=3, GenerateLoopInvRelThree[vars,stateS, F, ThreeRecList, file]];

Print["finished"];
WriteString[file," Not[ "];
WriteString[file,t ];
WriteString[file," ] "];
(*WriteString[file," ],{ "];
For[index=1, index<Length[stateS],index++, WriteString[file,stateS[[index]][[2]]]; WriteString[file, " , "]];
WriteString[file,stateS[[Length[stateS]]][[2]]];
WriteString[file," },Reals, Backsubstitution->True]"];*)
(*WriteString[file,"FullSimplify[%&&Element[{i,j,f,f1,f2,iP,jP,fP,f1P,f2P,N},Integers]]"];*)
]

  End[]

  EndPackage[]




































