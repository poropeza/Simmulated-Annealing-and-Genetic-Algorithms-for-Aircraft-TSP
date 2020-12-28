% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [ Z ] = CostosRS( S , D )


Z=0;
i=1;

while i < length(S)-1
    
    Z= Z + (D(S(i),S(i+1)));
    i=i+1;
    
end



end

