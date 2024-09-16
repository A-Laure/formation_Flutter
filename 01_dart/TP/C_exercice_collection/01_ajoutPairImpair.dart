void main() {  

// Exercice 1


//1. Créez une liste de nombres de 1 à 10.
print('liste manuelle');
List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numberList);

// sol 2 : automatique
print('Liste auto');
List<int> numberList2 = List.generate(10, (index) => index +1);
print(numberList2);

// 2. Ajoutez les nombres impairs de 11 à 15 à la liste.


 numberList.addAll([11, 13, 15]);
 print(numberList);


 /* AVEC UNE BOUCLE avec modulo : du coup automatique

 for (var i=11; i<16; i++) {
    if (i % 2 != 0)
    numberList.add([i]);
  } 
  print(numberList);
*/



// 3. Affichez la somme de tous les éléments de la liste.

//Avec reduce : fait somme des élément de la liste element1 + elemt2 fait elmt'3' + element3 -> fait une element'4'

print('Avec reduce');
int sum = numberList.reduce((value, element) => value + element);
print('La somme des nombres est $sum');


//Avec fold
print('Avec fold');
var sum2 = numberList.fold(0, (a, b) => a + b);
  print('La somme des nombres est $sum2');

// Autre sol
print('Autre sol');
int somme = 0;
for (var number in numberList) {
  somme = somme + number;
  // somme += number;  idem ligne au dessus, autre façon d'écrire
}
print('La somme des nombres est $somme');





}