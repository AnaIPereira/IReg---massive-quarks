(* ::Package:: *)

(* ::Input:: *)
(*(*limites de integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*x1m=mu0+2*(mu0*m0)^(1/2);*)


(* ::Input:: *)
(*x1M=1-2m0^(1/2);*)


(* ::Input:: *)
(*x2m=(1-x1)/2-(m0-mu0)*(1+x1)/(2*(x1+m0))-1/2*(((x1-mu0)^2-4*m0*mu0)*((x1-1)^2-4m0))^(1/2)/(x1+m0);*)


(* ::Input:: *)
(*x2M=(1-x1)/2-(m0-mu0)*(1+x1)/(2*(x1+m0))+1/2*(((x1-mu0)^2-4*m0*mu0)*((x1-1)^2-4m0))^(1/2)/(x1+m0);*)


(* ::Input:: *)
(*(*primeira integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*i1=1/(x2+mu0)*)


(* ::Input:: *)
(*p1=Assuming[mu0>0&&mu0\[Epsilon]Reals&&x2>0,Integrate[i1,x2]]//FullSimplify;*)


(* ::Input:: *)
(*p1s=p1/.{x2->x2M};*)


(* ::Input:: *)
(*p1i=p1/.{x2->x2m};*)


(* ::Input:: *)
(*p1f=p1s-p1i//FullSimplify;*)


(* ::Input:: *)
(*(*expans\[ATilde]o da primeira integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p1ff=Assuming[mu0>0&&m0>0&&mu0\[Epsilon]Reals&&m0\[Epsilon]Reals&&x1>0,Series[p1f,{mu0,0,1}]]//FullSimplify;*)


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
(*(*expans\[ATilde]o da segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2ff=Assuming[mu0>0&&m0>0&&mu0\[Epsilon]Reals&&m0\[Epsilon]Reals,Series[p2f,{mu0,0,0}]]//Normal*)


(* ::Input:: *)
(*p2fff=Assuming[mu0>0&&m0>0&&mu0\[Epsilon]Reals&&m0\[Epsilon]Reals,Series[p2ff,{m0,0,2}]]//Normal*)


(* ::Input:: *)
(*%/.{m0->mu0}*)


(* ::Input:: *)
(*Series[%,{mu0,0,0}]*)


(* ::Input:: *)
(*(**)
(*resultado dos integrais massivos com os nossos limites massivos (verifica-se que estes limites se reduzem aos anteriores para o caso sem massa fazendo m0->mu0. *)
(**)
(**)
(*Para conseguir que o mathematica integrasse tive que assumir quando fa\[CCedilla]o a expans\[ATilde]o da primeira integra\[CCedilla]\[ATilde]o que x1>0. No entanto no final quando fa\[CCedilla]o o limite de m0->mu0->0 n\[ATilde]o reproduzo o mesmo resultado que no caso sem massa - a parte logaritmica consigo reproduzir mas a parte finita difere*)
(**)*)
