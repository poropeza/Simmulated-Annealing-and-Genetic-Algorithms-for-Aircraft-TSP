% EVIDENCIA INTEGRADORA DE PROGRAMACI�N AVANZADA
% INGENIER�A EN INFORM�TICA
% 8�A
% PETER SAVIER OROPEZA MART�NEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17



%% LIBERACI�N DE MEMORIA Y LIMPIEZA DE CONSOLA
clc;
clear;
close all;

%% UBICACI�N GEOGR�FICA DE LOS PUNTOS

 [model]=CreateModel();

Cant_Ciudades = model.n;


img = imread ('map.png');%# Load a sample image
            min_x = 0;
            
            max_x = 100;
            min_y = 0;
            max_y = 100;
            figure(1);
            grid on;
           
            x_min = min_x;
            x_max = max_x;
            y_min = min_y;
            y_max = max_y;
            imagesc ([x_min x_max ], [y_min y_max], img);
        

            
%% INICIALIZANDO EL TOUR DE MANERA SECUENCIAL
 
 for i=1:Cant_Ciudades
    tour(i)=i; 
 end
 
 sol0 = tour; %solucion inicial
  

 
 r=1; %n�mero aleatorio que representa el color con el que se va a graficar el recorrido.
            

 
 
 %% MEN� PRINCIPAL PARA EL PROYECTO FINAL
 
 opc=0;
 
 while opc~=3
     opc=0;
    
     while opc < 1 || opc > 3
         
        clc;
         
        disp('****************PROYECTO FINAL DE PROGRAMACI�N AVANZADA**************');
        disp('1. Recocido Simulado');
        disp('2. Algoritmos Gen�ticos');
        disp('3. Salir');
        opc=input('Ingrese el valor num�rico de la opci�n: ');
     
       
     end  
     
     
     if opc == 1
         [tour,Z] = recocidoSimulado( sol0, model, Cant_Ciudades);
         
         cla;
         
         img = imread ('map.png');%# Load a sample image
            min_x = 0;
            max_x = 100;
            min_y = 0;
            max_y = 100;
            figure(1);
            grid on;
           
            x_min = min_x;
            x_max = max_x;
            y_min = min_y;
            y_max = max_y;
            imagesc ([x_min x_max ], [y_min y_max], img);

         Z
         tour
         PlotSolution(tour,model,randi([1 12])) %%graficaci�n del tour
         pause;
         
         
     elseif opc==2
        
         [tour,Z] = Genetico( sol0, model, Cant_Ciudades);
         
         cla;
         
         img = imread ('map.png');%# Load a sample image
            min_x = 0;
            max_x = 100;
            min_y = 0;
            max_y = 100;
            figure(1);
            grid on;
           
            x_min = min_x;
            x_max = max_x;
            y_min = min_y;
            y_max = max_y;
            imagesc ([x_min x_max ], [y_min y_max], img);

         Z
         tour
         PlotSolution(tour,model,randi([1 12])) %%graficaci�n del tour
         pause;
         
     else
         disp('HASTA LUEGO...');
         pause;
         
     end
     
     
     
     clc;
     
 end
            

