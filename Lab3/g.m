% Funzione m-file per calcolare g(x)

function [out] = g(x)
    out = exp(x) ./ (x.^2 + 1);
end