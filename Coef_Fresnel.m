function [r_per,t_per,r_par,t_par] = Coef_Fresnel(theta_i,theta_t,ni,nt)
%Funci�n para calcular los coeficientes de Fresnel conociendo el �ngulo de
%incidencia theta_i y el �ngulo de trasmisi�n theta_t; adem�s de los �ndices 
%de refracci�n complejos del medio incidente y trasmitido. Nos devuelve los valores 
%del campo trasmitido y reflejado, en sus dos polarizaciones: paralelo (r_par,t_par) y
%perpendicular(r_per,t_per) 


%Calculo de los Coeficientes�de�amplitud��de Fresnel Polarizacion S
r_per = (ni.*cosd(theta_i)-nt.*cosd(theta_t))/(ni.*cosd(theta_i)+nt.*cosd(theta_t));
t_per = (2*ni.*cosd(theta_i))/(ni.*cosd(theta_i)+nt.*cosd(theta_t));

%Calculo de los Coeficientes�de�amplitud��de Fresnel Polarizacion P
r_par = (nt.*cosd(theta_i)-ni.*cosd(theta_t))/(ni.*cosd(theta_t)+nt.*cosd(theta_i));
t_par = (2*ni.*cosd(theta_i))/(ni.*cosd(theta_t)+nt.*cosd(theta_i));
   


end




