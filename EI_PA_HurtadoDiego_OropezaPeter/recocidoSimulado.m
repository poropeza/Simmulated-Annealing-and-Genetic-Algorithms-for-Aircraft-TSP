% EVIDENCIA INTEGRADORA DE PROGRAMACI�N AVANZADA
% INGENIER�A EN INFORM�TICA
% 8�A
% PETER SAVIER OROPEZA MART�NEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17



function [Smax,Zmax] = recocidoSimulado( sol0, model, Cant_Ciudades)
    
%% PAR�METROS INICIALES

To= 0; %temperatura inicial
 
 while To<=0 %validaci�n que la temperatura inicial sea mayor a cero
    To=input('Ingrese la temperatura inicial mayor a cero: ');
 end
 
 Lmax=0; %cantidad total de iteraciones
 
 while Lmax<=0 %validaci�n que la cantidad de iteraciones m�xima sea mayor a cero
    Lmax=input('Ingrese la totalidad de iteraciones: ');
 end
 
 alfa=0;
 
 while alfa<=0 || alfa > 1 %validaci�n que la alfa sea un valor entre 0 y 1
    alfa=input('Ingrese el valor de alfa (de 0 a 1): ');
 end
 
 Tf=0.0001; %temperatura a la quie se tiene que alcanzar

 Zmax=10000;
 Smax= zeros(length(sol0));
 
 
 %el probhlema tiene 32 ciudades representando cada una, a cada estado de
 %M�xico
 

  
 
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
 
         if Zi < Zmax %encontr� una mejor soluci�n de costo inferior (greedy)
             Zmax=Zi;
             Smax=Si;
         end
         
    

         
         
     end
     
     Ti= alfa*Ti;
     
     
     
 end 
 

 
 

 

end

