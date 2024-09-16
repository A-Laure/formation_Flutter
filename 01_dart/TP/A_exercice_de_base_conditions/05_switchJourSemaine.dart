/* Exerxice 5 : Écrivez un programme qui demande à l'utilisateur de saisir un numéro de jour 1 pour lundi, 2
pour mardi, etc.) et affiche le nom du jour correspondant.

A faire :

1- Demander à l'utilisateur de choisir un numéro de 1 à 7
2- Afficher le jour correspondant
*/


import 'dart:io'; // pour la saisie utilisateur

void main() {

print('Veuillez choisir un numéro de 1 à 7');
final int jourNumber = int.parse (stdin.readLineSync()!); // on met final car on ne connaît pas à l'avance ce qui va être saisi
print('Vous avez choisi le nombre $jourNumber');

switch (jourNumber) {  //switch veut dire selon - ne pas oublier les break!!! Ds l'idéal, mettre en 1er les cas "les plus possibles qui arrivent"
// Ne pas oublier d'indenter
  case == 1 : // pas besoin de mettre le ==, il le fait par défaut
    print('Vous avez choisi lundi');
    break;
  case == 2 :
    print('Vous avez choisi mardi');
    break;
  case == 3 :
    print('Vous avez choisi mercredi');
    break;
  case == 4 :
    print('Vous avez choisi jeudi');
    break;
  case == 5 :
    print('Vous avez choisi vendredi');
    break;
  case == 6 :
    print('Vous avez choisi samedi');
    break;
  case == 7 :
    print('Vous avez choisi dimanche');
    break;
  default :
    print('Votre chiffre n est pas dans la fourchette');
    break;
}



}