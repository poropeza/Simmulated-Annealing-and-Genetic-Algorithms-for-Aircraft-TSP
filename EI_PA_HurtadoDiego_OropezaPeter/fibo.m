% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [ x ] = fibo( a )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


if a == 0
    x= 0;
    
    return;

elseif a ==1
    
    x= 1;
    
    return;
    
else
    
    x= fibo(a-1) + fibo(a-2);
 
end    



end

