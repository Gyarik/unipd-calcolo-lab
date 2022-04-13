% Pulisce il Workspace da qualsiasi variabile precedentemente creata
clear all;

% Dichiarazione dei vettori riga tramite input da utente
voti = input("Inserisci i voti: ");
crediti = input("Inserisci i crediti: ");

% Calcoli
mediana = median(voti);
media = mean(voti);
mediap = sum(voti .* crediti)/sum(crediti);
massimo = max(voti);
minimo = min(voti);

% Stampa in command window dei risultati
fprintf("La mediana dei voti e' %d\n", mediana)
fprintf("La media dei voti e' %d\n", media)
fprintf("La media ponderata dei voti e' %d\n", mediap)
fprintf("Il voto massimo e' %i\n", massimo)
fprintf("Il voto minimo e' %i\n", minimo)