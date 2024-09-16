/*
Écrivez une fonction qui prend un montant hors taxe et un taux de TVA en paramètres, puis
renvoie le montant total avec la TVA incluse avec une saisie user
*/

import 'dart:io';

double calculTtc (double montantHt, double tva){

return (montantHt * (1+(tva / 100)));

}

void main ()
{ 

print('Veuillez saisir le montant HT : ');
double montantHt = double.parse(stdin.readLineSync()!);

print('Veuillez saisir le montant de la TVA : ');
double tva = double.parse(stdin.readLineSync()!);

double montantTtc = calculTtc(montantHt, tva);

print('Le total TTC est $montantTtc');
}