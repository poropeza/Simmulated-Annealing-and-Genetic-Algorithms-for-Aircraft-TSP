% EVIDENCIA INTEGRADORA DE PROGRAMACI�N AVANZADA
% INGENIER�A EN INFORM�TICA
% 8�A
% PETER SAVIER OROPEZA MART�NEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17



function [ SSmax,ZZmax ] = Seleccion( pob_act , cant_ind , D, Smax, Zmax)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here




for i=1:cant_ind
    
   
   
    if CostosGen( pob_act(i,:) , D ) < Zmax
       Zmax =  CostosGen( pob_act(i,:) , D );
       Smax = pob_act(i,:);
    end
        
    
end

ZZmax = Zmax;
SSmax = Smax;

end

