import 'dart:io';

void main() {  

//Exercice 2 : Ecrire un programme qui affiche la table de multiplication pour un nombre donné et un qui génère les 10 tables

// 1. Demandez à l'utilisateur d'entrer un nombre.

print('Programme pour une table');
print('');
print('Taper un 1er nombre :');
int number = int.parse(stdin.readLineSync()!);


// 2. Affichez la table de multiplication pour ce nombre jusqu'à 10.


for (var i = 0; i < 11 ; i++) {
  var result = number * i ;
  print('$number x $i = $result');
}

print('');

/* ou sans déclaration de variable, calcul dans le print

for (var i = 0; i < 11 ; i++) {
  print('$number x $i = ${number * i}');
}

*/

// Faire un prog qui génére les 10 tables 

print('Programme qui génère les 10 tables');
print('');

int table = 0;
int multiplicateur = 0;
int result = 0;


  for (; multiplicateur <= 10; multiplicateur ++) {
     result = table * multiplicateur;
     print('$table * multiplié par $multiplicateur = $result');
     
} 

print(''); 

while (table <=10) { 
multiplicateur = 0;
table = table + 1;

    for (; multiplicateur <= 10; multiplicateur ++) {
        result = table * multiplicateur;
        print('$table * multiplié par $multiplicateur = $result');
       
} 
print('');
}
} 


 



