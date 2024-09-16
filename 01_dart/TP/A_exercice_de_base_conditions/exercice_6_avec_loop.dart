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

var boisson = ['1 - Café', '2 - Chocolat', '3 - Soupe'];
print(boisson);

print('Quelle boisson de la liste voulez vous?');

String choixBoisson = stdin.readLineSync()!;

switch (choixBoisson) {
  case '1' : // mis en string comme ça, lit tt en string, même un chiffre et du coup peut faire le test sur tout et renvoi sur default si autre chose que un chiffre
  // si ont met juste 1 au lieu de '1', le default ne marche pas si on tape ballon car ne reconnaît pas un int et il ne se passe rien
  print('Vous avez choisi : ${boisson[0]}');
  break;

  case '2' :
  print('Vous avez choisi : ${boisson[1]}');
  break;

  case '3' :
  print('Vous avez choisi : ${boisson[2]}');
  break;

  default :
    print('Votre saisie ne convient pas, veuillez taper 1, 2 ou 3');
    break;
  }

  /*if(choixBoisson == boisson) {
    print('Vous avez choisi un(e) $choixBoisson');
  } else {
    print('Cette boisson n est pas proposée');
    print('Quelle boisson DE LA LISTE voulez vous?');
    print(boisson);

String choixBoisson = stdin.readLineSync()!;
print('Vous avez choisi un(e) $choixBoisson');
  }
 */

print('Voulez vous du sucre?');

List<String> sucre = ['oui', 'non'];
print(sucre);

String choixSucre = stdin.readLineSync()!;
print('Avec sucre : $choixSucre');

print('Vous avez choisi $choixBoisson et pour le sucre $choixSucre');


}