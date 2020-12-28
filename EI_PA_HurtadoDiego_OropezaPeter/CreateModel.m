% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [model]=CreateModel()

    Problem=Problem25();
    
    %lee el archivo de los clientes
    estados= Problem(:,1); %%arreglo que almacena los índices de los estados
    x= Problem(:,2);%arreglo en el que almacena las coordenadas en x de los clientes
    y= Problem(:,3);%arreglo en el que almacena las coordenadas en y de los clientes

    
    
    
    n=numel(x);
    
    D=zeros(n,n); %matriz para las distancias entre clientes
  

            
    
    %calcula la distancia entre los clientes
    for i=1:n-1
        
        for j=i+1:n
            
            D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            
             D(j,i)=D(i,j);
            
  
        end
      
      
    end
    


    model.n=n;%numero de elementos en el arreglo
    model.x=x; %posicion en x de los puntos
    model.y=y; %posicion en y de los puntos
    model.D=D; %matriz de distancias entre las ciudades

    

end