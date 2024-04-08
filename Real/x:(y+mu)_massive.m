(* ::Package:: *)

(* ::Input:: *)
(*(*Limites de integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*x1m=mu0+2*(mu0*m0)^(1/2);*)


(* ::Input:: *)
(*x1M=1-2m0^(1/2);*)


(* ::Input:: *)
(*x2m=(1-x1)/2-(m0-mu0)*(1+x1)/(2*(x1+m0))-1/2*(((x1-mu0)^2-4*m0*mu0)*((x1-1)^2-4m0))^(1/2)/(x1+m0);*)


(* ::Input:: *)
(*x2M=(1-x1)/2-(m0-mu0)*(1+x1)/(2*(x1+m0))+1/2*(((x1-mu0)^2-4*m0*mu0)*((x1-1)^2-4m0))^(1/2)/(x1+m0);*)


(* ::Input:: *)
(*(*primeira integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*i1=x2/(x1+mu0)*)


(* ::Input:: *)
(*p1=Integrate[i1,x2];*)


(* ::Input:: *)
(*p1s=p1/.{x2->x2M};*)


(* ::Input:: *)
(*p1i=p1/.{x2->x2m};*)


(* ::Input:: *)
(*p1f=p1s-p1i//FullSimplify;*)


(* ::Input:: *)
(*(*expansao da primeiraintegra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p1ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&x1>0,Series[p1f,{mu0,0,3}]]//Normal//FullSimplify;*)


(* ::Input:: *)
(*(*segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2=Integrate[p1ff,x1];*)


(* ::Input:: *)
(*p2s=p2/.{x1->x1M};*)


(* ::Input:: *)
(*p2i=p2/.{x1->x1m};*)


(* ::Input:: *)
(*p2f=p2s-p2i;*)


(* ::Input:: *)
(*(*Expans\[ATilde]o da segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,Series[p2f,{mu0,0,0}]]//Normal*)


(* ::Input:: *)
(*fin=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,Series[p2ff,{m0,0,2}]]//Normal*)


(* ::Input:: *)
(*%/.{m0->mu0}*)


(* ::Input:: *)
(*Series[%,{mu0,0,0}]*)


(* ::Input:: *)
(*(*no limite de m0->mu0->0 nao se reduz ao integral que era esperado (a parte logaritmica consigo reproduzir mas a finita nao.) E novamente tive que assumir x1>0 quando fiz a primeira expansao em mu0*)*)
