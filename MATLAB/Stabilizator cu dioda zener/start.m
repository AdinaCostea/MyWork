clear all;
close all;
clc;
%---------------parametrii circuitului---------------------

Vi_min=10;
Vi_max=24;
Vi=Vi_min:1:Vi_max;  %tensiune de alimentare
Vz=5.1;   %tensiune diodei zener
N=1;   %coeficientul care tine seama de efectul recombinarii purtatorilor de sarcina in regiune de bariera(pt Si)
Iz=178e-3;
RL=10e+3;
Ir=890e-3;
rz=7;    %rezistenta dinamica
%-----------------tranzistor-----------------------------
Vbc=60;
Vbe=0.65;
Vce=40;
Ic=200e-3;
beta=100;
%----------------------------------------------------------
R1=10e+3;
R2=10e+3;

ex=1;
ck=0;
var=0;

interfata(Vz,Vi_min,Vi_max,ex,ck,RL,Iz,Ir,rz,Vi,Vbc,Vbe,Vce,Ic,beta,R1,R2,var)
