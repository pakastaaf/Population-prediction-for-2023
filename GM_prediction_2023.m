X0 = [18157337, 18395567 , 18631779, 18879552, 19503159];
X1 = cumsum(X0);
n = length(X0);
Z = zeros(n-1, 2);
for i = 1:n-1
    Z(i, 1) = -0.5 * (X1(i) + X1(i+1));
    Z(i, 2) = 1;
end
B = (Z' * Z) \ (Z' * X0(2:end)');
a = B(1);
u = B(2);
X_predict = zeros(1, n);
X_predict(1) = X0(1);
for i = 2:n
    X_predict(i) = (X0(1) - u/a) * (1 - exp(a)) * exp(-a * (i-1));
end
X_predict_sum = cumsum(X_predict);
prediction_2023 = (X0(1) - u/a) * exp(-a*5) + u/a - X_predict_sum(end);
real = 19766807;
disp(['Prediction of population for Kazakhstan in 2023 using GM model: ', num2str(prediction_2023)]);
disp(['Error of prediction of population for Kazakhstan in 2023 using GM model: ', num2str(round((abs(prediction_2023-real)/real),12))]);

