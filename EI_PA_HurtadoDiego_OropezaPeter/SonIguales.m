% EVIDENCIA INTEGRADORA DE PROGRAMACI�N AVANZADA
% INGENIER�A EN INFORM�TICA
% 8�A
% PETER SAVIER OROPEZA MART�NEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17


function [ x ] = SonIguales( a,b,Cant_Ciudades )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

z=0;


for i=1:Cant_Ciudades
 
  if  a(i) == b(i)
     z=z+1;
  end
 
end


if z < Cant_Ciudades %verifica si los 32 valores son iguales (ambas soluciones son iguales) EN ESTE CASO NO SON IGUALES
    
   x=0;
   
else %SON IGUALES
    
    x=1;
    
end

end

