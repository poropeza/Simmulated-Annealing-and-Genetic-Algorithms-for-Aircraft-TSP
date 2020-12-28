% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17


function [ pob_act ] = mutacion(pob_act, n_cruzamiento, cant_ind)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here




z=1; %variable de control para saber si hay individuos repetidos

while z==1
    
    
    x= randi([1 8]);
    a= fibo(x);

    zo= randi([1 100])/100;

    %se secciona la solución en 21 debido a que es el máximo número de fibonacci que se 
    % puede ocupar en nuestro problema
    
    
    for i=n_cruzamiento+1:cant_ind
        
        if(zo>0.5) %explora en los genes del lado derecho del individuo
    
        s= randi([1 11]);

          s=s+21;  %se desplaza a los índices de la derecha
            aux= pob_act(i,a);
            pob_act(i,a) = pob_act(i,s);
            pob_act(i,s) = aux;

        else %explora en los genes del lado izquierdo del individuo

                s= randi([1 21]); %se mantiene en el lado izquierdo 
                aux= pob_act(i,a);
                pob_act(i,a) = pob_act(i,s);
                pob_act(i,s) = aux;


        end
        
    end

    

    
    g=0;%variable para hacer break en el ciclo de afuera en casi de que existan dos individuos iguales
    
    for k=1:cant_ind %verificar si hay iguales
       for l=k:cant_ind
           
           if l == k
              break; 
           end
           
           if SonIguales( pob_act(k,:),pob_act(l,:), Cant_Ciudades ) == 1
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






pob_act=pob_act;

end

