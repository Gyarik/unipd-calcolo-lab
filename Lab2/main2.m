format short;
clear all;

% Input da utente
a = input("Inserisci il coefficiente di secondo grado: ");
b = input("Inserisci il coefficiente di primo grado: ");
c = input("Inserisci il termine noto: ");
x1v = input("Inserisci la x1 vera: ");
x2v = input("Inserisci la x2 vera: ");

% Esegue script es1.m
es2;

% Calcola singolo errore se esiste una sola soluzione
if(isnan(x2) && ~isnan(x1))
    err1 = abs(x1v - x1) / abs(x1v);
    fprintf("Errore relativo\n");
    fprintf("err(x1) = %d\n", err1);
elseif(~isnan(x2) && ~isnan(x1))
    % Calcolo degli errori
    err1 = abs(x1v - x1) / abs(x1v);
    err2 = abs(x2v - x2) / abs(x2v);
    fprintf("Errori relativi\n");
    fprintf("err(x1) = %d\n", err1);
    fprintf("err(x2) = %d\n", err2);
end