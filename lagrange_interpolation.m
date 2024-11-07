function [p, coefficients] = lagrange_interpolation(x, y, xi)
% Lagrange Interpolation
% Inputs:
%   x: vector of x coordinates of data points
%   y: vector of y coordinates of data points
%   xi: vector of x values to interpolate
% Outputs:
%   p: vector of interpolated y values corresponding to xi
%   coefficients: matrix of Lagrange polynomial coefficients

n = length(x);
m = length(xi);
p = zeros(size(xi));
coefficients = zeros(n, m);

for j = 1:m
    for i = 1:n
        L = ones(size(xi));
        for k = 1:n
            if k ~= i
                L = L .* (xi(j) - x(k)) ./ (x(i) - x(k));
            end
        end
        coefficients(i, j) = prod(xi(j) - x(setdiff(1:n, i))) / prod(x(i) - x(setdiff(1:n, i)));
        p(j) = p(j) + y(i) * L;
    end
end

end