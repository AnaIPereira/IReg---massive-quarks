(* ::Package:: *)

(* ::Input:: *)
(*(*Limites de integra\[CCedilla]\[ATilde]o*)*)


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
(*i1=1/((x2+mu0)(x1+mu0))*)


(* ::Input:: *)
(*p1=Integrate[i1,x2];*)


(* ::Input:: *)
(*p1s=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,p1/.{x2->x2M}]//ExpandAll;*)


(* ::Input:: *)
(*p1i=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,p1/.{x2->x2m}]//ExpandAll;*)


(* ::Input:: *)
(*p1f=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,p1s-p1i]//ExpandAll;*)


(* ::Input:: *)
(*(*expansao da primiera integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*p1ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&x1<0&&m0\[Epsilon]Reals,Series[p1f,{m0,0,1}]]//ExpandAll;*)


(* ::Input:: *)
(*p1fff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&x1<0&&m0\[Epsilon]Reals,Series[p1f,{mu0,0,1}]]//ExpandAll;*)


(* ::Input:: *)
(*(*segunda integra\[CCedilla]\[ATilde]o*)*)


(* ::Input:: *)
(*p2=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,Integrate[p1ff,x1]]//ExpandAll;*)


(* ::Input:: *)
(*p2s=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,p2/.{x1->x1M}]//ExpandAll;*)


(* ::Input:: *)
(*p2i=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,p2/.{x1->x1m}]//ExpandAll;*)


(* ::Input:: *)
(*p2f=p2s-p2i;*)


(* ::Input:: *)
(*(*Expansao da segunda integra\[CCedilla]ao*)*)


(* ::Input:: *)
(*p2ff=Assuming[mu0>0&&mu0\[Epsilon]Reals&&m0>0&&m0\[Epsilon]Reals,Series[p2f,{mu0,0,0}]]//FullSimplify*)


(* ::Input:: *)
(*pfin=N[p2ff/.{m0->mu0}]//ExpandAll*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Series[%, {mu0,0,0}]//ExpandAll*)


(* ::Input:: *)
(*(*para este integral em particular foi preciso fazer expansao em mu0 e tambem em m0 - ao contrario dos outros. Foi tambem preciso assumir que x1<0 quando se fizeram essas expans\[OTilde]es. *)
(**)
(*O resultado final quando se faz o limite de massless particles n\[ATilde]o coincide com as integrais do Pittau - a parte logaritmica \[EAcute] reproduzida mas a parte finita nao.*)
(**)*)
