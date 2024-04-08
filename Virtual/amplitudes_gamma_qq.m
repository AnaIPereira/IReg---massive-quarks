(* ::Package:: *)

(* ::Title:: *)
(*\[Gamma] decaying into q qb*)


(* ::Section:: *)
(*Load FeynCalc and the necessary add-ons or other packages*)


description="\[Gamma] -> q qb, EW, total decay rate, 1-loop";
If[ $FrontEnd === Null,
	$FeynCalcStartupMessages = False;
	Print[description];
];
If[ $Notebooks === False,
	$FeynCalcStartupMessages = False
];
$LoadAddOns={"FeynArts"};
<<FeynCalc`
$FAVerbose = 0;

FCCheckVersion[9,3,1];

SetOptions[FourVector,FeynCalcInternal->False];


(* ::Section:: *)
(*EFT - Generate Feynman diagrams - tree level *)


(* ::Text:: *)
(*Here we consider only the dominant contribution from the top quark mass. However, it is trivial to include also loops from other quark flavors.*)


diags2 = InsertFields[CreateTopologies[1,1 -> 2,ExcludeTopologies->Tadpoles], 
	{V[1]} -> {F[3,{1}],-F[3,{1}]}, InsertionLevel ->{Particles},Model->"SMQCD",
	ExcludeParticles->{U[_],S[_],V[1],V[2],V[3],F[_,{2|3}]}];

Paint[diags2, ColumnsXRows -> {2, 1}, Numbering -> Simple,
	SheetHeader->None,ImageSize->{512,256}];


(* ::Section:: *)
(*Obtain the amplitudes*)


(* ::Input::Initialization:: *)
FCClearScalarProducts[];


(* ::Input:: *)
(*(*Vertex correction*)*)


(* ::Input:: *)
(*amp[a]=FCFAConvert[CreateFeynAmp[DiagramExtract[diags2,{1}],PreFactor->-1],IncomingMomenta->{pH},*)
(*	OutgoingMomenta->{kq,kqb},LoopMomenta->{k},List->False,Contract->True,*)
(*	DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.Momentum[Polarization[pH,Complex[0,1]]]->LorentzIndex[\[Mu]]/.k->k+kq*)
(**)


(* ::Input:: *)
(*amp[b]=amp[a]//SUNSimplify;*)


(* ::Input:: *)
(*amp[c]=amp[b]//DiracSimplify;*)


(* ::Input:: *)
(*amp[c]/.FeynAmpDenominator[___]->1/Q//Simplify*)


(* ::Input:: *)
(*(*Self energy no quark*)*)


(* ::Code::Initialization:: *)
amp[0]=FCFAConvert[CreateFeynAmp[DiagramExtract[diags2,{3}],PreFactor->-1],IncomingMomenta->{pH},
	OutgoingMomenta->{kq,kqb},LoopMomenta->{k},List->False,Contract->True,
	DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.Momentum[Polarization[pH,Complex[0,1]]]->LorentzIndex[\[Mu]]


(* ::Code::Initialization:: *)
amp[1]=amp[0]//SUNSimplify;


(* ::Input::Initialization:: *)
amp[2]=amp[1]//DiracSimplify;


(* ::Code::Initialization:: *)
amp[2]/.FeynAmpDenominator[___]->1/Q1//Simplify


(* ::Input:: *)
(*(*Self energy no anti-quark*)*)


(* ::Input:: *)
(*amp[00]=FCFAConvert[CreateFeynAmp[DiagramExtract[diags2,{2}],PreFactor->-1],IncomingMomenta->{pH},*)
(*	OutgoingMomenta->{kq,kqb},LoopMomenta->{k},List->False,Contract->True,*)
(*	DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.Momentum[Polarization[pH,Complex[0,1]]]->LorentzIndex[\[Mu]]*)


(* ::Input:: *)
(*amp[11]=amp[00]//SUNSimplify;*)


(* ::Input:: *)
(*amp[22]=amp[11]//DiracSimplify;*)


(* ::Input:: *)
(*amp[22]/.FeynAmpDenominator[___]->1/Q2//Simplify*)
