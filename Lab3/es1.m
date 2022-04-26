% Si crei uno script in cui venga definita la funzione
% f(x) = (e^x)(x^2 + 1), vengano creati 100 punti equispaziati in [0, 1]
% e venga creata una figura(10) con il grafico di f costruito su tali
% punti. Si scriva anche una funzione m-file che implementi la funzione
% g(x) = (e^x)/(x^2+1). Il grafico dovrà essere nella stessa finestra.

% f(x) dove exp(x) calcola l'esponenziale sul singolo elemento
f = @(x) exp(x) .* (x.^2 + 1);

% Impostazione spazio disponibile sull'asse x
x = linspace(0, 1, 100);

% Calcolo delle rispettive funzioni
y = f(x);
z = g(x);

% Stampa entrambi i grafici sulla stessa finestra
plot(x, y, x, z);