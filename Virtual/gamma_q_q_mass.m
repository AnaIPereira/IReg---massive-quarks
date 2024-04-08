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


diags2 = InsertFields[CreateTopologies[1,1 -> 2,ExcludeTopologies->WFCorrections], 
	{V[1]} -> {F[3,{1}],-F[3,{1}]}, InsertionLevel ->{Particles},Model->"SMQCD",
	ExcludeParticles->{U[_],S[_],V[1],V[2],V[3]}];

Paint[diags2, ColumnsXRows -> {2, 1}, Numbering -> Simple,
	SheetHeader->None,ImageSize->{512,256}];


(* ::Section:: *)
(*Obtain the amplitudes*)


(* ::Input::Initialization:: *)
FCClearScalarProducts[];


amp[0]=FCFAConvert[CreateFeynAmp[DiagramExtract[diags2,{1}],PreFactor->-1],IncomingMomenta->{pH},
	OutgoingMomenta->{kq,kqb},LoopMomenta->{k},List->False,Contract->True,
	DropSumOver->True,SMP->True,UndoChiralSplittings->True]/.Momentum[Polarization[pH,Complex[0,1]]]->LorentzIndex[\[Mu]]/.k->k+kq


amp[1]=amp[0]//SUNSimplify;


(* ::Input::Initialization:: *)
amp[2]=amp[1]//DiracSimplify


amp[2]/.FeynAmpDenominator[___]->1/Q//Simplify
