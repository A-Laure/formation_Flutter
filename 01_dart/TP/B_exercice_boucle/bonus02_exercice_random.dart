import 'dart:math';

void main() {  

/*
Exercice bonus 2
En utilisant la classe Random de la librairie math, écrire un programme qui remplit un tableau
avec 20 nombres aléatoires
*/

  print('Remplissage du tableau avec 20 nombres aléatoires positifs et négatifs');

  List<int> tombola = [];

  Random random = Random();

  for (int i = 0; i < 20; i++) {
    int nombre = random.nextInt(201) - 100; // 201 est le chiffre à partir duquel il part et fait -100 => Génère des nombres entre -100 et 100
    tombola.add(nombre);
  }

print('n° de la tombola : $tombola');


var nombreNum = tombola.length; 
print('Il y a $nombreNum nombres dans le tableau');


// Trier ces nombres dans deux tableaux distincts. 
// Le premier contiendra les valeurs positives

List<int> valuePositives = [];
 
var testPositif = tombola.where((e) => e >= 0);  // ou pas obligé de laissr "e" => var testPositif = tombola.where((int miaou) => miaou >= 0);
    valuePositives.addAll(testPositif);
    print(valuePositives);

// Le second contiendra les valeurs négatives. 

List<int> valueNegatives = [];
 
var testnegatif = tombola.where((e) => e < 0);
    valueNegatives.addAll(testnegatif);
    print(valueNegatives);

// Enfin, afficher le contenu des deux tableaux.*/



// Solution Damien

/* Création d'une instance de la classe Random
Random random2 = Random(); 
*/

// Remplir tableau de 20 nbres alétaoires
// enlever les doublons possibles sur le tableau de 20 chiffres

List<int>nombreAletoires = [];

for (int i = 0; i<20; i++ )
{

    nombreAletoires.add(Random().nextInt(201)-100); // nextInt() = nbre de chiffres que l'on veut (donne 1 nbre entre -100 et 100)
  // si on avait mis + 100, il aurait choisi un nombre entre 100 et 200
}

print(nombreAletoires);

// Trier les nombres positifs et négatifs dans 2 tableaux (List) distincts

List<int> positifs2 = [];
List<int> negatifs2 = [];

for (int nombre in nombreAletoires)
{

if (nombre > 0) 
  {
    positifs2.add(nombre);
  } else 
      {
        negatifs2.add(nombre);
      }
}

print(positifs2);
print(negatifs2);





 }

