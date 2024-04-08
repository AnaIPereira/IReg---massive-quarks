(* ::Package:: *)

(* ::Input:: *)
(*(*Limites de integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*x1m=3mu0;*)


(* ::Input:: *)
(*x1M=1-2mu0^(1/2);*)


(* ::Input:: *)
(*x2m=(1-x1)/2-(((x1-3mu0)((1-x1)^2-4mu0))/(4*(x1+mu0)))^(1/2);*)


(* ::Input:: *)
(*x2M=(1-x1)/2+(((x1-3mu0)((1-x1)^2-4mu0))/(4*(x1+mu0)))^(1/2);*)


(* ::Input:: *)
(*(*primeira integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*i1=x1/(x2+mu0)*)


(* ::Input:: *)
(*p1=Integrate[i1,x2]*)


(* ::Input:: *)
(*p1s=p1/.{x2->x2M};*)


(* ::Input:: *)
(*p1i=p1/.{x2->x2m};*)


(* ::Input:: *)
(*p1f=p1s-p1i*)


(* ::Input:: *)
(*(*expansao da primeira integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p1ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&x1<1,Series[p1f,{mu0,0,1}]]//FullSimplify*)


(* ::Input:: *)
(*(*segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2=Assuming[mu0>0&&mu0\[Epsilon]Reals,Integrate[p1ff,x1]]//FullSimplify*)


(* ::Input:: *)
(*p2s=p2/.{x1->x1M};*)


(* ::Input:: *)
(*p2i=p2/.{x1->x1m};*)


(* ::Input:: *)
(*p2f=p2s-p2i*)


(* ::Input:: *)
(*(*Expans\[ATilde]o da segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2ff=Assuming[mu0>0,Series[p2f,{mu0,0,0}]]//Normal*)
