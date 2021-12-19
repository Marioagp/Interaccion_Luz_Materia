function [n, k, N_complejo] = Val_N_Complejo (epsilon)
%Funci�n que calcula el valor del �ndice de rafracci�n complejo de la forma N = n + i*k
%a partir del valor de epsilon proporcionado. 

invsqrt2 = 0.707106781186547;  % 1/sqrt(2)

% Parte real de la epsilon
real_epsilon = real(epsilon);
        
% Parte imaginaria de epsilon
imag_epsilon = imag(epsilon);
        
% �ndice de refracci�n complejo N = n + i*k
N_complejo = invsqrt2*(sqrt(sqrt((real_epsilon).^2 + (imag_epsilon).^2) + real_epsilon) + 1i*sqrt(sqrt((real_epsilon).^2 + (imag_epsilon).^2) - real_epsilon));
n=real(N_complejo);
k=imag(N_complejo);

end