/* Exercice 2 : Ecrivez un prog qui demande à l'user de saisir une valeur entière et afficher son double 
si cette valeur donnée est inférieure à un seuiil donné soit 20

A faire :
1 - Demander de saisir une valeur entière à l'user
2 - Afficher son double si inférieure à 20 

*/

import 'dart:io'; // pour la saisie utilisateur

void main() {

//1
print('Veuillez saisir un nombre entier entre 0 et 19');

final int inputNumber = int.parse(stdin.readLineSync()!);



if (inputNumber < 20) {
  print(inputNumber * 2);
} else {
  print('$inputNumber n est pas dans le seuil');
}

}

/* OU 

const int limit=20;

print('Veuillez saisir un nombre :');

final int inputNumber = int.parse(stdin.readLineSync()!);        // final car valeur non coonue, seulement à la saisie

if (inputNumber < limit) {
  print(inputNumber * 2);   on aurait pu créer une variable qui stocke int result = inputNumber * 2 quand on sait que l'on va se resservir de la variable
} else {
  print('$inputNumber n est pas dans le seuil');
}

*/

