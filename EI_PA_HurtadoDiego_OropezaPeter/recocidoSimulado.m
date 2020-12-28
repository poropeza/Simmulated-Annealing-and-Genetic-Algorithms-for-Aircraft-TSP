% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17



function [Smax,Zmax] = recocidoSimulado( sol0, model, Cant_Ciudades)
    
%% PARÁMETROS INICIALES

To= 0; %temperatura inicial
 
 while To<=0 %validación que la temperatura inicial sea mayor a cero
    To=input('Ingrese la temperatura inicial mayor a cero: ');
 end
 
 Lmax=0; %cantidad total de iteraciones
 
 while Lmax<=0 %validación que la cantidad de iteraciones máxima sea mayor a cero
    Lmax=input('Ingrese la totalidad de iteraciones: ');
 end
 
 alfa=0;
 
 while alfa<=0 || alfa > 1 %validación que la alfa sea un valor entre 0 y 1
    alfa=input('Ingrese el valor de alfa (de 0 a 1): ');
 end
 
 Tf=0.0001; %temperatura a la quie se tiene que alcanzar

 Zmax=10000;
 Smax= zeros(length(sol0));
 
 
 %el probhlema tiene 32 ciudades representando cada una, a cada estado de
 %México
 

  
 
 %% INICIO DE ALGORITMO
 
 Si= sol0;
 Ti=To;
 
 while Ti > Tf %ciclo externo
     
     
     for i=1:Lmax %ciclo interno
         
         [Sj] = perturbaRS( Si );
         
         [deltaZSi]=CostosRS( Si , model.D );
         [deltaZSj]=CostosRS( Sj , model.D );
         
         deltaZ = deltaZSi - deltaZSj;
         
         if deltaZ > 0 
            Si=Sj;
            
         else
             na=randi([1 100])/100;
             
             if na <= exp(deltaZ/Ti);
                 Si=Sj;                 
             end
             
         end
         

          [Zi]=CostosRS( Si , model.D ); %el costo del tour final
 
         if Zi < Zmax %encontró una mejor solución de costo inferior (greedy)
             Zmax=Zi;
             Smax=Si;
         end
         
    

         
         
     end
     
     Ti= alfa*Ti;
     
     
     
 end 
 

 
 

 

end

