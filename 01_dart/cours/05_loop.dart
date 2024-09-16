
import 'dart:io';


void main() {  

/* Le but, automatiser, répéter  une tâche pour un jeu de données ou une demande

for :
for in :
while :

do while : moins utilisée car elle fait un tour de plus que les autres

*/

/* for : syntaxe 

for(initialisation; condition; iteration) {
  instruction à répéter
}
*/

for(int i=0; i<5; i++) {  //le i peut être <0   i++ = i + 1 / i = 0 important pour index tableau car commence à 0

print('Tour n° $i');

};



// for avec une liste

List<int> number = [1,2,3,4,5,6,7,8,9,10];

for (int j=0; j<number.length; j++) {
print(number[j]);


};



List<String>fruits = ['banane', 'pomme', 'fraise', 'kiwi'];

for (int k = 0; k < fruits.length; k++) {  // length permet de calculer le nombre de valeurs et calcul tout seul la valeur de mon tableau

    print(k); //va afficher 0 puis 1 puis 2 puis 3
    print(fruits[k]); // affiche les valeurs une par une banane puis pomme etc...

    };

// on peut mettre un seuil en constante


const seuil = 5;

for( int l=0; l<seuil; l++){

}; // etc..

// 

/*for in : pour chaque élément du tableau on fait l'action equivalent du foreach()

for(declaration d'une varibale in tableau à parcourir)
 {
  instruction
 }

*/

List<String> vegetables = ['haricot', 'pomme de terre', 'petit pois', 'butternut']; // qd ++ éléments, mettre un 's' sur la variable, plus visible

for (var vegetable in vegetables) { // le 1er pas de 's' à vegetable, le 2ème, notre varaiable
print(vegetable);
};

Map<String, dynamic> user = {  // on n'a pas les index donc variable non iterable dc for in sur les MAP ne marche pas dc faut le faire autrement avec .values
  'firstname' : 'Loic',
  'age' : '26',
  'email' : 'loic@gmail.com'
};

for(var element in user.values) {

print(element); // affichera toutes les valeurs

for(var element in user.keys) {

print(element); // affichera toutes les keys
// ou print(user[element]);
};
    }

    for(var element in user.entries) {

print(element); // affichera toutes les keys / value
};

/* Portée des variables - une variable est valable que dans un bloc cad les {}
   A l,'interieur d'un bloc, "on n'a pas conscience de ce qui se passe à l'exterieur"
   ex : si on déclare une varioble dans un bloc, pas déconnue à l'extérieur

*/

 print('Portée des variables'); // bien car si on décompose par des print chaque element, si kkun rajoute un element, ne le prendra pas en compte
for(var element in user.keys){  
print(user[element]);
String toto = 'test';
print(toto);
    
};

List<Map<String, dynamic>> users2 = [
  { 
  'firstname' : 'alaure',
  'age' : '51',
  'email' : 'alaure@gmail.com'
  },
  {
  'firstname' : 'clement',
  'age' : '22',
  'email' : 'clement@gmail.com'
},
];

print(users2);

// Afficher que l'email On va rentrer étape par étape dans dimension du tableau

print('key,value');
for (var user2 in users2) {
  print(user2); // afichera toutes les key et value

}

// puis sol 1 :
print('Solution 1 : value');
for (var user2 in users2) {
  print(user2['email']); // afichera toutes les value 'email' => alaure@gmail.com, clement@gmail.com

}

// firstname et âge
for (var user2 in users2) {
  print(user2['firstname'] + ' est âgé(e) de ' + user2['age'] + ' ans'); 

}
//Affichera tous les key/value (forme d'itérartion sans passer par le for(i= ...) et le print(users2[i]):

print('Affichera tous les key/value');
for (var user2 in users2)
user2.forEach(
  (key, value) => (print('$key : $value')) // on peut écrire {(print(print('$key : $value'));} ---- avec les {} si plusiers instructions et mettre le ';'
);

// Recup key de la list users2

for (var user2 in users2) { 
  print(user2.keys);
}

// que les key d'un user

print(users2[0].keys);


/* while -> syntaxe / tant que conditi0n est vrai, continu de boucler
on ne sait pas à l'avance le nombre de boucle (dépend de quelque chose)
ce qui est avant { } n'est pas ds le bloc
il faut dc déclarer la variable à l'extérieur

while(condition) {
 intruction
}

*/

int x = 1;
while(x !=6) {        //while sera une condition négative généralement "tant que n'est pas"
print(x);  // affichera 1,2,3,4,5
x++;
}
print('La valeur actuelle de x est $x : '); // affichera la dernière valeur de x car en dehors de la boucle soit 6 (6 termine la boucle) ici


int x2 = 1;
while(x2 !=6) { 
  print('x2 = $x2');
  x2++;
int y = 1;
y++;
print('y = $y'); //y étant dans le bloc, ne fait pas +1 (ne fait que la 1ère)
}

// Exemple concret
print('Trouver le nombre à deviner :');

int userInput = int.parse(stdin.readLineSync()!);
 
while (userInput != 10) {

  print('Perdu!!!');
  print('Essaye encore');
  print('Trouver le nombre à deviner :');
  userInput = int.parse(stdin.readLineSync()!);
  
}
print('Bravo vous avez gagné!!!');

/* Do ... while (faire ... tant que) pas très utilisé dans la réalité, un while 'tout court' optimise mieux"

do {
intruction
} while(condition);
*/

print('do...while');
const numberGuess2 =15;

print('Trouver le nombre à deviner :');

int userInput2 = int.parse(stdin.readLineSync()!);

if(userInput2 == numberGuess2) {   // optimisation du code
   print('Bravo vous avez gagné!!!');
   return;                              /* return arrête le script, permet de ne pas rentrer dans le do car condition directement atteinte, 
                                        chiffre deviné en 1er pas la peine de faire un test/comparaison sur les autres nombres, test sur le 
                                        bon nombre en 1er */
}

do {
if (userInput2<numberGuess2) {
    print('Trop petit');
  } else {
    print('Trop grand');
  }

print('Perdu!!!');
print('Essaye encore');

  print('Trouver le nombre à deviner :');
  userInput2 = int.parse(stdin.readLineSync()!);
} while (userInput2 != numberGuess2);

print('Bravo vous avez gagné!!!');



}