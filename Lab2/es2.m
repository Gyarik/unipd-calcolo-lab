% Scrivere un algoritmo che risolva l'equazione di secondo grado a
% coefficienti reali ax^2+bx+c=0, trovandone, se esistono, le due
% radici reali
% OPERAZIONI STABILI

% Caso in cui il coefficiente di secondo grado è nullo
if(a == 0)
    % Se anche il coefficiente di primo grado è nullo,
    % allora si avrà c=0 -> impossibile
    if(b == 0)
        x1 = NaN;
        x2 = NaN;
        fprintf("Impossibile.\n");
    % Altrimenti si avrà un'equazione di primo grado (bx+c=0)
    else
        x1 = -c / b;
        x2 = NaN;
        fprintf("Una soluzione\n");
        fprintf("x = %e\n", x1);
    end
% Caso in cui il coefficiente di secondo grado non è nullo
else
    % Calcolo del delta
    delta = b^2 - 4*a*c;
    % Se il delta è negativo allora l'equazione è irrisolvibile
    if(delta < 0)
        x1 = NaN;
        x2 = NaN;
        fprintf("Nessuna soluzione reale.\n");
    % Se il delta è 0 allora si avranno due soluzioni uguali
    elseif(delta == 0)
        x1 = -b / (2 * a);
        x2 = x1;
        fprintf("Due soluzioni reali coincidenti\n");
        fprintf("x1 = x2 = %e\n", x1);
    % Se il delta è maggiore di 0 si avranno due soluzioni distinte
    % (formule stabili)
    else
        % Se b == 0 si avrà ax^2+c=0
        if(b == 0)
            x1 = sqrt(-c / a);
            x2 = -sqrt(-c / a);
            fprintf("x1 = %e\n", x1);
            fprintf("x2 = %e\n", x2);
        else
            x1 = -((b + sign(b)*sqrt(delta)) / (2 * a));
            x2 = c / (a * x1);
            fprintf("Due soluzioni reali distinte\n");
            fprintf("x1 = %e\n", x1);
            fprintf("x2 = %e\n", x2);
        end
    end
end