
format long;
x = [2019 2020 2021 2022];
y = [18395567 18631779 18879552 19503159];
a = 2023;

[predicted_valueall, coefficients] = lagrange_interpolation(x, y, a);
disp("----------------ALL POPULATION ----------------");
disp("Prediction for 2023 for ALL population is:");
disp(predicted_valueall);
disp("Coefficients of Lagrange Polynomials:");
disp(coefficients);
abs_error_all=abs(predicted_valueall-19766807);
rel_error_all=abs(predicted_valueall-19766807)/19766807;
disp(['Absolute error for ALL is ', num2str(abs_error_all)]);
disp(['Relative error for ALL is ', num2str(rel_error_all)]);
disp(" ");

m = [2019 2020 2021 2022];
n = [10698208 10938652 11151376 11991238];
a = 2023;

[predicted_valueurban, coefficients] = lagrange_interpolation(m, n, a);
disp("----------------URBAN POPULATION ----------------");
disp("Prediction for 2023 for URBAN population is:");
disp(predicted_valueurban);
disp("Coefficients of Lagrange Polynomials:");
disp(coefficients);
abs_error_urb=abs(predicted_valueurban-12209896);
rel_error_urb=abs(predicted_valueurban-12209896)/12209896;
disp(['Absolute error for URBAN is ', num2str(abs_error_urb)]);
disp(['Relative error for URBAN is ', num2str(rel_error_urb)]);
disp(" ");


l = [2019 2020 2021 2022];
k = [7697359 7693127 7728176 7511921];
a = 2023;

[predicted_valuerural, coefficients] = lagrange_interpolation(l, k, a);
disp("----------------RURAL POPULATION ----------------");
disp("Prediction for 2023 for RURAL population is:");
disp(predicted_valuerural);
disp("Coefficients of Lagrange Polynomials:");
disp(coefficients);
abs_error_rural=abs(predicted_valuerural-7556911);
rel_error_rural=abs(predicted_valuerural-7556911)/7556911;
disp(['Absolute error for RURAL is ', num2str(abs_error_rural)]);
disp(['Relative error for RURAL is ', num2str(rel_error_rural)]);
disp(" ");

figure;
plot(x, y, 'bo-', 'MarkerSize', 4); 
hold on;
plot(a, predicted_valueall, 'bo', 'MarkerSize', 4); 
plot([x(4) a],[y(4) predicted_valueall])

plot(m, n, 'go-', 'MarkerSize', 4); 
hold on;
plot(a, predicted_valueurban, 'go', 'MarkerSize', 4); 
plot([m(4) a],[n(4) predicted_valueurban])

plot(l, k, 'ro-', 'MarkerSize', 4); 
hold on;
plot(a, predicted_valuerural, 'ro', 'MarkerSize', 4); 
plot([l(4) a],[k(4) predicted_valuerural])
xlabel('Year');
ylabel('Population');
title('Lagrange Interpolation');

hold off;

