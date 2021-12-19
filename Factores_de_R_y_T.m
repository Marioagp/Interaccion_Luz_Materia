function [R_per, T_per, R_par, T_par]= Factores_de_R_y_T(ni, nt,theta_i,theta_t,r_per, t_per, r_par, t_par)
%Esta funci�n calcula el factor de reflexi�n de energ�a R y el factor de
%transmisi�n de energ�a T para cada una de las polarizaciones paralelas y
%perpendicular [R_per, T_per, R_par, T_par]. Recibe como entrada los
%valores de los �ndices de refracci�n del medio incidente y del trasmitido el
%�ngulo de incidencia y los valores de los coeficientes de Fresnel. Todo
%ello para cada uno de los valores de entrada de �ngulos de incidencia y
%trasmisi�n (theta_i,theta_t) respectivamente


%Calculo del factor de Reflexi�n de Energ�a
R_per=(abs(r_per)).^2;
R_par=(abs(r_par)).^2;


%Calculo del factor de Trasmisi�n de Energ�a
T_par=((real(nt).*cosd((theta_t)))./(real(ni).*cosd((theta_i)))).*(abs((t_par)).^2);
T_per=((real(nt).*cosd((theta_t)))./(real(ni).*cosd((theta_i)))).*(abs((t_per)).^2);

end