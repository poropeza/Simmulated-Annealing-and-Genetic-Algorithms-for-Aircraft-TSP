% EVIDENCIA INTEGRADORA DE PROGRAMACIÓN AVANZADA
% INGENIERÍA EN INFORMÁTICA
% 8°A
% PETER SAVIER OROPEZA MARTÍNEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [ pob_act ] = cruzamiento(pob_act, n_cruzamiento, cant_ind, Cant_Ciudades)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here



aux=0;


z=1; %variable de control para saber si hay individuos repetidos

while z==1
    
    for i=1:n_cruzamiento
        
     
        p1=pob_act(i,:);
        p2=pob_act(i+1,:);
        
        
        ptoCruce1=randi([2 round(Cant_Ciudades*0.5)]);
        
        ptoCruce2=0; %> al ptoCruce1
        
         while ptoCruce2<=0 || ptoCruce2 < ptoCruce1
            ptoCruce2=randi([3 Cant_Ciudades-2]);
         end
         
         
        
        aux1= p1(1:ptoCruce1);%primera parte padre1
        
        aux2= p2(1:ptoCruce1);%primera parte padre2
        
        aux3= p2(ptoCruce1+1:ptoCruce2); %parte intermedio del padre1

        aux4= p1(ptoCruce1+1:ptoCruce2); %parte intermedio del padre2
        
        diego=p1;
        diego1=p2;
        
        
        h=ptoCruce2+1;
        
        while h<Cant_Ciudades
        
            if  find(aux4==diego(h))~= 0
                
                diego(h)= diego1(find(aux4==diego1(h)));
                
            end
            
            if  find(aux3==diego(h))~= 0
                diego1(h)= diego(find(aux3==diego(h)));
                
            end
            
            h=h+1;
            
        end
        
        p1= [aux1 aux3 diego];
        p2= [aux2 aux4 diego1];
        
               
        i=i+1;
        
    end
    
    
    
    g=0;%variable para hacer break en el ciclo de afuera en casi de que existan dos individuos iguales
    
    for k=1:cant_ind %verificar si hay iguales
       for l=k:cant_ind
           
           if l == k
              break; 
           end
           
           if SonIguales( pob_act(k,:),pob_ini(l,:), Cant_Ciudades ) == 1
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

