clear all;

voti = input("Inserisci i voti: ");
crediti = input("Inserisci i crediti: ");

mediana = median(voti);
media = mean(voti);
mediap = sum(voti .* crediti)/sum(crediti);
massimo = max(voti);
minimo = min(voti);

sprintf("La mediana dei voti e' %d/n", mediana)
sprintf("La media dei voti e' %d\n", media)
sprintf("La media ponderata dei voti e' %d\n", mediap)
sprintf("Il voto massimo e' %i", massimo)
sprintf("Il voto minimo e' %i", minimo)