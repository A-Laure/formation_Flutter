/* Exercice 4 : Ecrivez un prog qui demande de saisir 2 nmbres à l'user et l'informe ensuite si leur produit est négatif ou positif (on laisse le cas où le produit est nul)
Attention toutefois : on ne doit pas calculer le produit de ces 2 nbres

A faire :

1 - Demander à l'user 2 nombres
2 - Informer si produit est négatif ou positif
*/


import 'dart:io'; // pour la saisie utilisateur

void main() {

print('Taper un 1er nombre :');

int firstNumber = int.parse(stdin.readLineSync()!);

print('Taper un 2ème nombre :');

int secondNumber = int.parse(stdin.readLineSync()!);

if (firstNumber < 0 && secondNumber > 0 || (secondNumber < 0 && firstNumber > 0)) {
  print('Le produit de $firstNumber et $secondNumber est négatif');
} else { 
  print('Le produit de $firstNumber et $secondNumber est positif');
}

/* en ternaire 

stocké dans une variable mais pas obligé

String result = (firstNumber < 0 && secondNumber > 0 || (secondNumber < 0 && firstNumber > 0)) ? 'Négatif' : 'Positif';
print(result);

en ne passant pas par 1 autre variable

print((firstNumber < 0 && secondNumber > 0 || (secondNumber < 0 && firstNumber > 0)) ? 'Négatif' : 'Positif');

*/

}


