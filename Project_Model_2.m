%All Population

dataX = [2019 2020 2021 2022];
dataY = [18395567 18631779 18879552 19503159];

[a,b,c,d] = natural_spline_coefff(dataX, dataY);

x=2023;
y = natural_spline(dataX, dataY, x);
disp('All Population in 2023')
disp(y)
disp('Actual error')
disp((abs(19766807-y)))
disp("Relative error")
disp(abs(19766807-y)/19766807)

%Urban
dataX = [2019 2020 2021 2022];
dataY_urban = [10698208 10938652 11151376 11991238];

[a,b,c,d] = natural_spline_coefff(dataX, dataY_urban);

x=2023;
y0 = natural_spline(dataX, dataY_urban, x);
disp('Population in 2023 for the Urban')
disp(y0)
disp('Actual error')
disp((abs(12209896-y0)))
disp("Relative error")
disp(abs(12209896-y0)/12209896)

%Rural
dataX = [2019 2020 2021 2022];
dataY_rural = [7697359 7693127 7728176 7511921];

[a,b,c,d] = natural_spline_coefff(dataX, dataY_rural);

x=2023;
y1 = natural_spline(dataX, dataY_rural, x);
disp('Population in 2023 for the Rural')
disp(y1)
disp('Actual error')
disp((abs(7556911-y1)))
disp("Relative error")
disp(abs(7556911-y1)/7556911)



figure;
plot(dataX, dataY, 'bo-', 'MarkerSize', 4); 
hold on;
plot(2023, y, 'bo', 'MarkerSize', 4); 
plot([dataX(4) 2023],[dataY(4) y])

plot(dataX, dataY_urban, 'go-', 'MarkerSize', 4); 
hold on;
plot(2023, y0, 'go', 'MarkerSize', 4); 
plot([dataX(4) 2023],[dataY_urban(4) y0])


plot(dataX, dataY_rural, 'ro-', 'MarkerSize', 4); 
hold on;
plot(2023, y1, 'ro', 'MarkerSize', 4); 
plot([dataX(4) 2023],[dataY_rural(4) y1])

xlabel('Year');
ylabel('Population');
title('Cubic Spline Interpolation');

hold off;
