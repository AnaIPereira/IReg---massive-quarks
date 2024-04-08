(* ::Package:: *)

(* ::Input:: *)
(*<<X`*)
(**)


(* ::Input:: *)
(*(*Integrais vertex correction*)*)


(* ::Input:: *)
(*(* integrais finitos de I*)*)


(* ::Input:: *)
(*num1=1;*)
(*HoldForm[LoopIntegrate[num1, k, {k, mu}, {k+p1, mu},{k-p2, mu}]];*)
(*A1 = LoopIntegrate[num1, k, {k, mu}, {k+p1, mu},{k-p2, mu}];*)
(*B1=A1/.{p1 . p1->0,p2 . p2->0};*)
(*C1=LoopRefine[B1];*)
(*D1=DiscExpand[C1];*)
(*E1=D1/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F1=Series[E1,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}*)


(* ::Input:: *)
(*(*integrais finitos de I^\[Mu]*)*)


(* ::Input:: *)
(*num2=LTensor[k,\[Mu]];*)
(*HoldForm[LoopIntegrate[num2, k, {k, mu}, {k+p1, mu},{k-p2, mu}]];*)
(*A2 = LoopIntegrate[num2, k, {k, mu}, {k+p1, mu},{k-p2, mu}];*)
(*B2=A2/.{p1 . p1->0,p2 . p2->0};*)
(*C2=LoopRefine[B2];*)
(*D2=DiscExpand[C2];*)
(*E2=D2/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F2=Series[E2,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}/.{1/Sqrt[(2 m^2-s)^2]->1/(2 m^2-s)}*)


(* ::Input:: *)
(*(*integrais finitos de I^\[Mu]\[Nu]*)*)


(* ::Input:: *)
(*num3=-LTensor[k,\[Mu]]*LTensor[k,\[Nu]](2k . p1);*)
(*HoldForm[LoopIntegrate[num3, k, {k, mu}, {k, mu}, {k+p1, mu},{k-p2, mu}]];*)
(*A3 = LoopIntegrate[num3, k, {k, mu}, {k, mu}, {k+p1, mu},{k-p2, mu}];*)
(*B3=A3/.{p1 . p1->0,p2 . p2->0};*)
(*C3=LoopRefine[B3];*)
(*D3=DiscExpand[C3];*)
(*E3=D3/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F3=Series[E3,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}/.{1/Sqrt[(2 m^2-s)^2]->1/(2 m^2-s)}*)


(* ::Input:: *)
(*num4=LTensor[k,\[Mu]]*LTensor[k,\[Nu]]*2(k . p2);*)
(*HoldForm[LoopIntegrate[num4, k, {k, mu},{k, mu},{k, mu},{k-p2, mu}]];*)
(*A4= LoopIntegrate[num4, k, {k, mu},{k, mu},{k, mu},{k-p2, mu}];*)
(*B4=A4/.{p1 . p1->0,p2 . p2->0};*)
(*C4=LoopRefine[B4];*)
(*D4=DiscExpand[C4];*)
(*E4=D4/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F4=Series[E4,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}/.{1/((2 m^2-s)^2)^(3/2)->1/(2 m^2-s)^3}//Simplify*)


(* ::Input:: *)
(*(*integrais finitos de I_2*)*)


(* ::Input:: *)
(*num5=-(2k . p1);*)
(*HoldForm[LoopIntegrate[num5, k, {k, mu}, {k+p1, mu},{k-p2, mu}]];*)
(*A5= LoopIntegrate[num5, k,{k, mu},{k+p1, mu},{k-p2, mu}];*)
(*B5=A5/.{p1 . p1->0,p2 . p2->0};*)
(*C5=LoopRefine[B5];*)
(*D5=DiscExpand[C5];*)
(*E5=D5/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F5=Series[E5,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}//Simplify*)


(* ::Input:: *)
(*num6=(2k . p2);*)
(*HoldForm[LoopIntegrate[num6, k, {k, mu},{k, mu},{k-p2, mu}]];*)
(*A6= LoopIntegrate[num6, k, {k, mu},{k, mu},{k-p2, mu}];*)
(*B6=A6/.{p1 . p1->0,p2 . p2->0};*)
(*C6=LoopRefine[B6];*)
(*D6=DiscExpand[C6];*)
(*E6=D6/.{p1 . p2->s/2-m^2}/.{mu->Sqrt[mo*s]};*)
(*F6=Series[E6,{mo,0,0},Assumptions->mo\[Element]Reals]/.{Sqrt[(2 m^2-s)^2]->(2 m^2-s)}//Simplify*)
(**)


(* ::Input:: *)
(*(*Integrais a usar na amplitude do vertex correction*)*)


(* ::Input:: *)
(*(*I*)*)


(* ::Input:: *)
(*I1=F1*)


(* ::Input:: *)
(*(*I_alpha*)*)


(* ::Input:: *)
(*Ialpha=F2/.{\[Mu]->\[Alpha]}*)


(* ::Input:: *)
(*(*I_mu_alpha*)*)


(* ::Input:: *)
(*Imualpha=(F3+F4)/.{\[Nu]->\[Alpha]}*)


(* ::Input:: *)
(*(*I_2*)*)


(* ::Input:: *)
(*I2=F5*)


(* ::Input:: *)
(*(*Amplitude vertex - termos proporcionais a u gamma_alpha v do pdf*)*)


(* ::Input:: *)
(*A1=(-4LTensor[p1,\[Mu]]*Ialpha-4Imualpha+4LTensor[p2,\[Mu]]*Ialpha)//ExpandAll*)


(* ::Input:: *)
(*A11=A1/.{Subscript[\[DoubleStruckG], \[Alpha],\[Mu]]->0}/.{LTensor[p1,\[Alpha]]->m}/.{LTensor[p2,\[Alpha]]->-m}*)


(* ::Input:: *)
(*A12=A1/.{LTensor[p1,\[Alpha]]->0}/.{LTensor[p2,\[Alpha]]->0}/.{Subscript[\[DoubleStruckG], \[Alpha],\[Mu]]->1}*)


(* ::Input:: *)
(*(*Amplitude - termos proporcionais a u gamma_mu v do pdf*)*)


(* ::Input:: *)
(*A2 = (4LTensor[p1,\[Alpha]]*Ialpha-4*p1 . p2*I1+2*I2-4*LTensor[p2,\[Alpha]]*Ialpha)/.{p1 . p2->s/2-m^2}/.{\!\( *)
(*\*SubsuperscriptBox[\(p1\), \(\[Alpha]\), \(2\)] -> \(m^2\)\)}/.{Subscript[p1, \[Alpha]] Subscript[p2, \[Alpha]]->s/2-m^2}/.{\!\( *)
(*\*SubsuperscriptBox[\(p2\), \(\[Alpha]\), \(2\)] -> \(m^2\)\)}*)
(**)


(* ::Input:: *)
(*(*Amplitude - termos proporcionais a u v do pdf*)*)


(* ::Input:: *)
(*A3=4*m*Ialpha/.{\[Alpha]->\[Mu]}*)


(* ::Input:: *)
(*(*Amplitude final vertex correction*)*)


(* ::Input:: *)
(*(*Termos proporcionais a u v*)*)


(* ::Input:: *)
(*T1=A11+A3/.{(2 m^2-s)/(mo s)->x}/.{(-1+(2 m^2)/s)/mo->x}//Simplify*)


(* ::Input:: *)
(*(*Termos proporcionais a u gamma_mu v*)*)


(* ::Input:: *)
(*T2=A12+A2/.{(2 m^2-s)/(mo s)->x}/.{(-1+(2 m^2)/s)/mo->x}*)


(* ::Input:: *)
(*(*Teste do limite de massa zero para comparar com to d or not to d*)*)


(* ::Input:: *)
(*T1teste=A11+A3/.{m->0}*)


(* ::Input:: *)
(*T2teste=A12+A2/.{m->0}*)
