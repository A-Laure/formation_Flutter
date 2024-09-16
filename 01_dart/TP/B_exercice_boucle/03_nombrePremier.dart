import 'dart:io';



void main() { 

//Exercice 3 : Écrire un programme qui vérifie si un nombre est premier

// 1. Demandez à l'utilisateur d'entrer un nombre.

print('MA METHODE');
print('');

print('Saisissez un nombre :');
int userInput = int.parse(stdin.readLineSync()!); // user rentre son nombre
print('Vous avez choisi $userInput');

List<int> modulo = [];
int testPremier = 1;
int result = 0;  // on déclare à l'extérieur d'un bloc car si déclarée dans un bloc, pas utilisable ailleurs = portée des variables

for(; testPremier <= userInput; testPremier++){ 
  result = userInput % testPremier;
  print('Le modulo de $userInput % $testPremier est $result');
 
 
 if (result == 0) {
    modulo.add(result);
    } 

    if(modulo.length == 2) {
       print('$userInput EST premier');
      } else {
      print('$userInput PAS premier');
    }
 
}
 
print(modulo);


//    SOLUTION 2  (Damien)


// 1. Demandez à l'utilisateur d'entrer un nombre.
print('  ');
print('Solution 2 - Damien');
print('Taper un  nombre :');
print('  ');
int number2 = int.parse(stdin.readLineSync()!);

bool estPremier = true;

for(int i = 2; i < number2; i++) {

if(number2 % i == 0) {
  print('Le nombre n est pas premier');
  estPremier = false;
  break;
} 
}

if(estPremier) {
  print('Le nombre $number2 est un nombre premier');
} else {
  print('Le nombre $number2 est pas un nombre premier');
}



//    SOLUTION 3   = fonction  


// 1. Demandez à l'utilisateur d'entrer un nombre.
print('  ');
print('Solution 3 - Booleenne fonction');
print('Taper un  nombre :');
print('  ');
int number3 = int.parse(stdin.readLineSync()!);

// 2. Vérifiez si le nombre est premier.

bool estPremier2(N) {
  for (var i = 2; i <= N / i; ++i) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}
 
 // 3. Affichez le résultat. 

 if (estPremier2(number3)) {
    print('$number3 est un nombre premier');
 } else {
          print('$number3 n\'est pas un nombre premier');
 }





}




                                      








