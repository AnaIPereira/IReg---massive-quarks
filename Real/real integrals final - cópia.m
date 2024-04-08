(* ::Package:: *)

(* ::Input:: *)
(*(*Final result of the real part*)*)


(* ::Input:: *)
(*I1=-1+3 m0^2-Log[m0]+2 m0 Log[m0];*)


(* ::Input:: *)
(*I2=2 m0+1/4 (-5-2 Log[m0])-m0^2 Log[m0];*)


(* ::Input:: *)
(*I3=(1/6 (2 \[Pi]^2-3 Log[mu0]^2))+((2-2 Log[2]-Log[m0]+Log[mu0])/mu0+2 (-3+Log[m0]-2 Log[mu0])) m0//FullSimplify;*)


(* ::Input:: *)
(*gama=(m0+mu0)^(1/2);*)


(* ::Input:: *)
(*B=-64m0+32*m0^(1/2)*gama-72*mu0-16;*)


(* ::Input:: *)
(*C1=-128m0^2+32m0^(1/2)*gama-32m0-128m0^(3/2)*gama-160m0*mu0-32m0^(1/2)*mu0*gama+16;*)


(* ::Input:: *)
(*final=B*2*I1+8*2*I2+C1*I3+16*mu0*I3+16mu0*I1*2//ExpandAll*)


(* ::Input:: *)
(*final2=Series[final,{mu0,0,0}]//ExpandAll*)


(* ::Input:: *)
(*final3=final2/.{m0->mu0}*)


(* ::Input:: *)
(*final4 = N[final3]*)


(* ::Input:: *)
(*(*final2 cont\[EAcute]m o resultado da parte real com as integrais da maneira que estao calculadas no notebook.*)
(**)
(*final4 contem o limite de m0->mu0 que deveria reproduzir o resultado do caso sem massa. Os logaritmos estao reproduzidos mas a parte finita nao.*)
(**)
(**)*)
