% EVIDENCIA INTEGRADORA DE PROGRAMACI�N AVANZADA
% INGENIER�A EN INFORM�TICA
% 8�A
% PETER SAVIER OROPEZA MART�NEZ   OMPI152172
% DIEGO GUSTAVO HURTADO OLIVARES  HODO140402
% FECHA: 11/08/17

function [Smax,Zmax] = Genetico( sol0, model, Cant_Ciudades)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

 
 %% PAR�METROS INICIALES

CantGeneraciones= 0; %variable para saber el total de generaciones
generaciona_actual=0; %contador para saber en cu�l generaci�n estamos
 
 while CantGeneraciones<=0
    CantGeneraciones=input('Ingrese la totalidad de Generaciones: ');
 end
 
 Cant_individuos=0; %cantidad total de individuos en la poblacion.
 
 
 while Cant_individuos<=0 
    Cant_individuos=input('Ingrese la totalidad de individuos: ');
 end
 
 pob_ini = zeros(Cant_individuos); %matriz para la poblacion inicial
 
 porcentaje_cruzamiento=0;
 
 while porcentaje_cruzamiento<=0 || porcentaje_cruzamiento > 1 
    porcentaje_cruzamiento=input('Ingrese el porcentaje de cruzamiento (de 0 a 1): ');
 end

 
 

 Zmax=10000;
 Smax= zeros(length(pob_ini));
 
 
  %% INICIO DE ALGORITMO
  
  pob_ini = GenerarPoblacionInicial( pob_ini , Cant_individuos,Cant_Ciudades ); %generaci�n de la poblaci�n inicial
  
  
  n_cruzamiento = round(porcentaje_cruzamiento * Cant_individuos); %cantidad de individuos a cruzar
  n_mutacion = Cant_individuos - n_cruzamiento; %cantidad de individuos a mutar
  
  pob_act = pob_ini; %la poblaci�n que va a ir iterando
  
 while generaciona_actual < CantGeneraciones
     
     pob_act = cruzamiento(pob_act, n_cruzamiento, Cant_individuos, Cant_Ciudades); %funcion que hace cruzamientos y retorna la matriz ya alterada
     
     pob_act = mutacion(pob_act, n_cruzamiento, Cant_individuos ); %funcion que hace mutaciones y retorna la matriz ya alterada
     

     
     [ Smax,Zmax ] = Seleccion( pob_act , Cant_individuos , model.D, Smax, Zmax); %checa el mejor de cada iteraci�n
     
     
     generaciona_actual = generaciona_actual+1; %incremento de la generaci�n
 end



end

