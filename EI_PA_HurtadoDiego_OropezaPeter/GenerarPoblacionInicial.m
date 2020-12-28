% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [ pob_act ] = GenerarPoblacionInicial( pob_ini , cant_ind, cant_ciudades )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

for i=1:cant_ciudades
    
   pob_ini(1,i)  = i;
end    


aux=0;

x=cant_ciudades;

z=1; %variable de control para saber si hay individuos repetidos

while z==1
    
    for i=2:cant_ind
 
        for j=1:x

            ax = pob_ini(i,1); %se le asigna el primer valor de la solución del individuo

            while find(pob_ini(i,:)==ax)~= 0
              ax  = randi([1 x]);
            end


           pob_ini(i,j)  = ax;


        end  

    end
    
    g=0;%variable para hacer break en el ciclo de afuera en casi de que existan dos individuos iguales
    
    for k=1:cant_ind %verificar si hay iguales
       for l=k:cant_ind
           
           if l == k
              break; 
           end
           
           if SonIguales( pob_ini(k,:),pob_ini(l,:) ) == 1
               g=1;
               z=1;
               break;
           end
       end
       
       if g==1
           z=1;
           break;
       end
    end
    
    if g==1
        z=1;
        
    else
        z=0;
    end
  
end    


 


pob_act=pob_ini(:,1:cant_ciudades);

end

