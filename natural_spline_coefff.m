% Natural Cubic Spline Coefficients Function
function [a, b, c, d] = natural_spline_coefff(dataX, dataY)
    n = length(dataX) - 1;
    h = zeros(1, n);
    for j = 1:n
        h(j) = dataX(j+1) - dataX(j);
    end
    A = zeros(n+1, n+1);
    A(1, 1) = 1;
    A(n+1, n+1) = 1;
    for i = 2:n
        A(i, i-1) = h(i-1);
        A(i, i) = 2 * (h(i-1) + h(i));
        A(i, i+1) = h(i);
    end
    bb = zeros(n+1, 1);
    for j = 2:n
        bb(j) = 3/h(j)*(dataY(j+1)-dataY(j)) - 3/h(j-1)*(dataY(j)-dataY(j-1));
    end
    c = A \ bb;
    a = reshape(dataY(1:n+1),n+1,1);
    b = zeros(n,1);
    d = zeros(n,1);
    for j = 1:n
        b(j) = 1/h(j)*(a(j+1)-a(j))-h(j)/3*(2*c(j)+c(j+1));
        d(j) = (c(j+1)-c(j))/(3*h(j));
    end
    a(n+1) = [];
    c(n+1) = [];
end