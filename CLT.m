function CLT(n,mu)
%--------------------------------------------------------------------------
% Propósito:  Esta función muestra cómo funciona el Teorema del 
%             Limite Central 
%--------------------------------------------------------------------------
% Inputs   :  n     : 1x1  tamano de la muestra 
%             mu    : 1x1  media de la distribucion uniforme que se usa
%                          para generar la muestra aleatoria. 
%--------------------------------------------------------------------------
% Output   :  graph1 : grafico de la densidad de una muestra estandarizada     
%--------------------------------------------------------------------------

b    = 2*mu;
a    = 2*mu-b;
iter = n;

% la varianza en una muestra con distribución uniforme es:
sigma = (1/12)*(b-a)^2

approx = NaN(iter,1);
for i=1:iter
    x         = b*rand(n,1);
    step1     = ones(1,n)*x/n; 
    step2     = n^(0.5)*(step1 - 5)*(1/sigma);
    approx(i) = step2;
end

clear step1 step2

figure(3) 
hist(approx,80), title('Densidad de la media muestral estandarizada','FontSize',16) 

end
