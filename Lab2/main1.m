format short;
clear all;

% Input da utente
a = input("Inserisci il coefficiente di secondo grado: ");
b = input("Inserisci il coefficiente di primo grado: ");
c = input("Inserisci il termine noto: ");
x1v = input("Inserisci la x1 vera: ");
x2v = input("Inserisci la x2 vera: ");

% Esegue i calcoli solo se tutti i valori sono non nulli
if(a ~= 0 && b ~= 0 && c ~= 0)
    % Esegue script es1.m
    es1;
    % Calcolo degli errori
    err1 = abs(x1v - x1) / abs(x1v);
    err2 = abs(x2v - x2) / abs(x2v);
    fprintf("Errori relativi\n");
    fprintf("err(x1) = %d\n", err1);
    fprintf("err(x2) = %d\n", err2);
else
    fprintf("Errore: il programma non accetta valori nulli.");
end