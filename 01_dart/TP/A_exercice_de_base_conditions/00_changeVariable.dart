/*Écrivez un programme qui échange la valeur de deux variables.
Exemple, si a = 2 et b = 5, le programme donnera a = 5 et b = 2.
*/

//import 'dart:io'; => vague orange car ne l'utile pas dans le programme, ici ne l'utilisera pas mais le mettre au début quand même

void main() {

//Solution 1 :

int a = 2;
int b = 5;
print ('La variable a est égale à $a et la variable b est égale à $b');

int c = a;
print ('La variable c est égale à $c');

a = c + 3;
print('La nouvelle valeur de a est $a');

b = c;
print('La nouvelle valeur de b est $b');

// Solution 2 : 

int a2 = 2;
int b2 = 5;

a2 = a2+b2; // 7
b2 = a2-b2; // 7 - 5 = 2
a2 = a2-b2; // 7 - 2 = 5

print ('La nouvelle variable a est égale à $a2 et la nouvelle variable b est égale à $b2');


}