import 'dart:io';

void main() {

//Écrire un programme qui calcule la somme des nombres de 1 à N. (si il rentre 4 faire 1 + 2 + 3 + 4)

// 1. Demandez à l'utilisateur d'entrer un nombre N.
// Solution Damien :
print('Solution Damien :');
print('');
print('Veuillez saisir un 1er nombre : ');

int n = int.parse (stdin.readLineSync()!);
print(n);

// 2. Calculez la somme des nombres de 1 à N.

int somme = 0;
for (int i=1; i <=n; i++)  { // si on avait mis i=0, fait un tour pour rien car +0 ne sert à rien
  //somme = somme + 1;
  print('i=$i');
    somme += i;
 print('Somme = $somme');
}

print('La somme de 1 à $n est $somme');


}