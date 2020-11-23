function LLN(n,mu)
%--------------------------------------------------------------------------
% Propósito:  Esta función muestra cómo funciona la ley de los grandes números.
%--------------------------------------------------------------------------
% Inputs   :  n     : 1x1  tamaño de la muestra 
%             mu    : 1x1  media de la distribución uniforme que se usa
%                          para generar la muestra aleatoria. 
%--------------------------------------------------------------------------
% Output   :  graph1 : grafico que muestra como la media muestral converge
%                      a la  media poblacional.
%             graph2 : grafico que muestra como la diferencia entre la 
%                      media muestral converge y media poblacional converge 
%                      a cero a medida que la muestra aumenta.            
%--------------------------------------------------------------------------

b    = 2*mu;
x    = b*rand(n,1);          
xbar = ones(1,n)*x/n                             

xbar_iter = NaN(n,1);

for i=1:n
    step1        = ones(1,i)*x(1:i,1)/i;
    xbar_iter(i) = step1;
end
clear step1

figure(1)
plot(xbar_iter), title('Promedios Muestrales: $\frac{1}{n}\sum_{i=1}^n x_i$','Interpreter','latex','FontSize',16), xlabel({'n'}),   hold on
plot(5*ones(n,1), 'r--'), legend('Media Muestral','Media Poblacional'),  hold off


 % grafico de la diferencia de la media muestral con respecto a la media poblacional   
figure(2)
plot(xbar_iter - mu),  title('Diferencia de la Media Muestral y Poblacional: $\frac{1}{n}\sum_{i=1}^n x_i-E[x_i]  $','Interpreter','latex','FontSize',16), xlabel({'n'}),  hold on
plot(zeros(n,1), 'r--'), hold off

end
