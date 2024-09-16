
import 'dart:io';
import 'dart:math';

void main() {

// Tant que saisie pas = 15 on envoie message et on test si plus petit ou plus grand que le nombre à deviner + compteur essais
print('  ');
print('1 - Chiffre à deviner et compteur essais');

const numberGuess =15;

print('Trouver le nombre à deviner :');

int userInput = int.parse(stdin.readLineSync()!);
int nombreEssai = 0;
 
while (userInput != numberGuess) {
nombreEssai = nombreEssai + 1;

if (userInput<numberGuess) {
    print('Trop petit');
  } else {
    print('Trop grand');
  }

print('Perdu!!!');
print('Essaye encore');

  print('Trouver le nombre à deviner :');
  userInput = int.parse(stdin.readLineSync()!);
  
}
print('Bravo vous avez gagné!!! Vous avez fait : $nombreEssai essai(s)'); // en dehors car la boucle s'est arrêtée car nombre atteint dc prog sort de la boucle

  

// Idem + faire un nombre d'essai max
print('  ');
print('2 - Chiffre pré défini à deviner et stop à x essais');

const numberToFind =15; // chiffre à trouver

print('Trouver le nombre à deviner :');

int userInput2 = int.parse(stdin.readLineSync()!); // saisie user
int nombreEssai2 = 1; // compteur essais démarre à 1 car le fais déjà une fois en dehors de la boucle15
 
while (userInput2 != numberToFind && nombreEssai2<5) { //tant que saisie user != 15 et nbre essai pas atteint
nombreEssai2 = nombreEssai2 + 1; // +1 au compteur essai

if (userInput2<numberToFind) {
    print('Trop petit');
  } else {
    print('Trop grand');
  }
print ('Essai $nombreEssai2');
print('Perdu!!!');
print('Essaye encore');
print('Trouver le nombre à deviner :');
userInput2 = int.parse(stdin.readLineSync()!);


}


if (userInput2 != numberToFind && nombreEssai2 == 5) {
  print('Vous avez perdu et atteint le nombre max d\' essais soit $nombreEssai2');
} else {
  print('Bravo vous avez gagné au bout de $nombreEssai2 essai(s)');    
}  




// Idem mais nombre aléatoire et nombre d'essai max
print('  '); 
print('3 - Chiffre alétoire à deviner et stop à x essais');


int numberToFind2 = Random().nextInt(20); // je déclare ma variable et demande un random entre 0 et 20 positif
print(numberToFind2);

print('Trouver le nombre à deviner :');

int userInput3 = int.parse(stdin.readLineSync()!); // saisie user
int nombreEssai3 = 1; // compteur essais démarre à 1 car le fais déjà une fois en dehors de la boucle15
 
while (userInput3 != numberToFind2 && nombreEssai3<5) { //tant que saisie user != 15 et nbre essai pas atteint
nombreEssai3 = nombreEssai3 + 1; // +1 au compteur essai

if (userInput3 < numberToFind2) {
    print('Trop petit');
  } else {
    print('Trop grand');
  }
print ('Essai $nombreEssai3');
print('Perdu!!!');
print('Essaye encore');
print('Trouver le nombre à deviner :');
userInput3 = int.parse(stdin.readLineSync()!);


}


if (userInput3 != numberToFind2 && nombreEssai3 == 5) {
  print('Vous avez perdu et atteint le nombre max d\' essais soit $nombreEssai3');
} else {
  print('Bravo vous avez gagné au bout de $nombreEssai3 essai(s)');    
}  

}











