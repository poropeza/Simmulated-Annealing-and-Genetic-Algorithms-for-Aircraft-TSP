% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17



function [ Sj ] = perturbaRS( Si )
    
   


    Sj = Si;
    
    x= randi([1 8]);
    a= fibo(x);

    zo= randi([1 100])/100;

    %se secciona la solución en 21 debido a que es el máximo número de fibonacci que se 
    % puede ocupar en nuestro problema

        if(zo>0.5) %explora en los genes del lado derecho del individuo
    
        s= randi([1 11]);

          s=s+21;  %se desplaza a los índices de la derecha
            aux= Sj(a);
            Sj(a) = Sj(s);
            Sj(s) = aux;

        else %explora en los genes del lado derecho del individuo

                s= randi([1 21]); %se mantiene en el lado izquierdo 
                aux= Sj(a);
                Sj(a) = Sj(s);
                Sj(s) = aux;


        end
        

end

