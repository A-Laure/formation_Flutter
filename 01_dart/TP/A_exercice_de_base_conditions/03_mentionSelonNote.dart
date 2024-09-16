/* Exercice 3 : Ecrivez un prog qui demande à l'user de saisir une note entière et affiche la mention correspondant à sa note

A faire :
1 - Demander à l'user une note entière
2 - Afficher la mention correspondant à sa note
*/

import 'dart:io'; // pour la saisie utilisateur

void main() {


print('Veuillez saisir une moyenne');
final double moyenne = double.parse(stdin.readLineSync()!);  // si on met const devant double on bloque le changement de la variable car const qd défini à l'avance. Ici final car on ne sait pas à l'avance ce que l'utilsateur va saisir
print('Vous avez saisi $moyenne');

// mettre Double plutôt que INT, rajoutera 12,0 / on se met à l'abri de kkun qui tape un chiffre à virgule

// plus malin de mettre le cas le plus courant en premier, on "gagne en perf" (pas le cas ici pour une moyenne mais par exemple sur des messages d'erreurs qui peuvent être nombreux)

if(moyenne >= 10 && moyenne < 12) {
  print('Votre mention est passable');
} else if (moyenne >= 12 && moyenne < 14) {
  print('Votre mention est assez bien');
} else if (moyenne >= 14 && moyenne <= 16) {
  print('Votre mention est bien');
} else if (moyenne >= 16 && moyenne < 18) {
  print('Votre mention est excellent');
} else if (moyenne >= 18 && moyenne <= 20) {
  print('Votre mention est très bien');
} else {
  print('Votre mention est pas reçu');
}


}