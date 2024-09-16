// Bases et conditions
import 'dart:io'; // pour la saisie utilisateur

void main() {

// Exercice 1 : Ecrivez un prog qui demande à l'utilisateur de saisir un nombre et affiche positif si positif, négatif si négatif et zéro si égal à 0

/* A faire :
1 - Demander de saisir un chiffre
2 - Imprimer le chiffre pour vérification
3 - Test 1 : chiffre positif
4 - Test 2 : chiffre négatif
5 - Test 3 : chiffre = à 0
*/

//1
print('Veuillez saisir un nombre entier :');

int inputNumber = int.parse(stdin.readLineSync()!); // ce qu'il y a derrière tous les champs d'un formulaire

//2
print('Vous avez choisi le nombre : $inputNumber');

// switch utilisé seulement si +++ cas possibles et laisse possibilité d'en rajouter 
switch (inputNumber) {
//3
  case > 0 :
      print('$inputNumber est positif');
      break;
       
//4
  case < 0 :  
      print('$inputNumber est négatif');
      break;

 //6
  case == 0 :
      print('$inputNumber est égal à 0');
      break;     
       
//6
  default :
      print('$inputNumber est hors norme');
      break;
      
      }


}