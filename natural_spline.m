% Natural Cubic Spline Interpolation Function
function y = natural_spline(dataX, dataY, x)
    [a, b, c, d] = natural_spline_coefff(dataX, dataY);
    y = zeros(size(x));
    for k = 1:length(x)
        for j = 1:length(dataX)-1
            if dataX(j) <= x(k) && dataX(j+1) >= x(k)
                break;
            end
        end
        xk = dataX(j);
        y(k) = a(j) + b(j)*(x(k)-xk) + c(j)*(x(k)-xk)^2 + d(j)*(x(k)-xk)^3;
    end
end
