(* ::Package:: *)

(* ::Input:: *)
(*(*limites de integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*x1m=3mu0;*)


(* ::Input:: *)
(*x1M=1-2mu0^(1/2);*)


(* ::Input:: *)
(*x2m=(1-x1)/2-(((x1-3mu0)((1-x1)^2-4mu0))/(4*(x1+mu0)))^(1/2);*)


(* ::Input:: *)
(*x2M=(1-x1)/2+(((x1-3mu0)((1-x1)^2-4mu0))/(4*(x1+mu0)))^(1/2);*)


(* ::Input:: *)
(*(*primeira integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*i1=1/(x2+mu0)*)


(* ::Input:: *)
(*p1=Integrate[i1,x2]*)


(* ::Input:: *)
(*p1s=p1/.{x2->x2M};*)


(* ::Input:: *)
(*p1i=p1/.{x2->x2m};*)


(* ::Input:: *)
(*p1f=p1s-p1i//ExpandAll*)


(* ::Input:: *)
(*(*expans\[ATilde]o da primeira integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p1ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&x1<1,Series[p1f,{mu0,0,1}]]//ExpandAll*)


(* ::Input:: *)
(*(*segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2=Integrate[p1ff,x1]*)


(* ::Input:: *)
(*p2s=p2/.{x1->x1M};*)


(* ::Input:: *)
(*p2i=p2/.{x1->x1m};*)


(* ::Input:: *)
(*p2f=p2s-p2i//FullSimplify;*)


(* ::Input:: *)
(*(*expans\[ATilde]o da segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2ff=Assuming[mu0>0,Series[p2f,{mu0,0,0}]]//Normal*)


(* ::Input:: *)
(*(*resultado final com os nossos limites coincide com resultado do Pittau para massless case - no entanto tive que assumir que x1<1 quando expandi a primeira integra\[CCedilla]\[ATilde]o, sen\[ATilde]o tinha divergencias - o mesmo acontece para os outros integrais sem massa*)*)
