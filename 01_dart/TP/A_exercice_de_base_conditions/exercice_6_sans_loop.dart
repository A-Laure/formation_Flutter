/* Exercice 5 : Ecrire un prog qui demande à l'user de choisir une boisson parmi plusieurs choix et si il souhaite du sucre (oui/non)
et affiche la boisson choisie avec ou sans sucre 

A faire :

1 - Faire une liste de choix de boisson
2 - Demander à l'user de choisir une boisson
3 - Demander à l'user sucre oui/non
4 - Affiche la boisson et avec/sans sucre
*/

import 'dart:io'; // pour la saisie utilisateur

void main() {


print('Quelle boisson voulez vous?');
print('1 - Café?'); 
print('2 - Thé?');
print('3 - Cacao?');

final int choixBoisson = int.parse (stdin.readLineSync()!); // final car on ne connaît pas à l'avance ce qui va être saisi, INT car on de mande 1, 2 ou 3
print('Vous avez choisi un(e) $choixBoisson');

print('Voulez vous du sucre?');
final String sucre= stdin.readLineSync()!;   //final car on ne connaît pas à l'avance ce qui va être saisi
print('Vous avez choisi $choixBoisson et pour le sucre $sucre');

/* BOOLEEN pour le sucre possible

bool sucre = choixsucre.toLowerCase() == 'oui' ? true : false;  // on transforme en minuscule pour avoir notre format selon ce que tape l'user (Oui, OUI, retc..)

*/

switch (choixBoisson) {  //switch veut dire selon - ne pas oublier les break!!! Ds l'idéal, mettre en 1er les cas "les plus possibles qui arrivent"
// Ne pas oublier d'indenter
  case 1 : // pas besoin de mettre le ==, il le fait par défaut
    print('Vous avez choisi café');
  break;
/* BOOLEEN pour le sucre
    print('Vous avez choisi café ${sucre ? 'sucré' : ''}');
*/   

  case 2 :
    print('Vous avez choisi thé');
    break;
  case 3 :
    print('Vous avez choisi cacao');
    break;
  default :
    print('Votre sélection n existe pas');
    break;
}



}