dataX = [2019 2020 2021 2022 2023];
dataY = [18395567 18631779 18879552 19503159 19766807];

[a,b,c,d] = natural_spline_coefff(dataX, dataY);

x=2019:1/12:2024;
y = natural_spline(dataX, dataY, x);

for i = 1:length(y)
    if y(i) > 20000000
        fprintf('The population will reach 20 mln in %d years and %d months\n', 2019+floor((i)/12), mod((i), 12));
    end
end