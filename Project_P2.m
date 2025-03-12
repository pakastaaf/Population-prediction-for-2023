format long
%Rural
dataX = [2019 2020 2021 2022];
dataY = [7697359 7693127 7728176 7511921];

[a,b,c,d] = natural_spline_coefff(dataX, dataY);

x=2025;
y = natural_spline(dataX, dataY, x);
disp('Population in 2025 for the Rural')
disp(y)

%Urban
dataX = [2019 2020 2021 2022];
dataY = [10698208 10938652 11151376 11991238];

[a,b,c,d] = natural_spline_coefff(dataX, dataY);

x=2025;
y = natural_spline(dataX, dataY, x);
disp('Population in 2025 for the Urban')
disp(y)
