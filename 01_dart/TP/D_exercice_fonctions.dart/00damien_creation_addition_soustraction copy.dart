// déclaration de la fonction Addition
double addition(double a, double b){
  return a + b;
}
// déclaration de la fonction Soustraction
double soustraction(double a, double b){
  return a - b;
}
// déclaration de la fonction Soustraction
double multiplication(double a, double b){
  return a * b;
}
// déclaration de la fonction division
dynamic division(double a, double b){
  if(b != 0){
    return a / b;
  }
  return 'Erreur : Division par zéro impossible';
}

void main() {
  
  /*
    1. Créez une fonction addition qui prend deux nombres en paramètres et renvoie leur somme.

    2. Créez une fonction soustraction qui prend deux nombres en paramètres et renvoie leur
    différence.

    3. Créez une fonction multiplication qui prend deux nombres en paramètres et renvoie leur
    produit.

    4. Créez une fonction division qui prend deux nombres en paramètres et renvoie leur quotien.

  */

  double nombre1 = 10.0;
  double nombre2 = 0;

  // 1) Appel de la fonction addition
  double somme = addition(nombre1, nombre2);
  print('l\'addition de $nombre1 et $nombre2 est égale à $somme');
  print('Addition : ${addition(nombre1, nombre2)}');

  // 2) Appel de la fonction soustraction 
  print('Soustraction : ${soustraction(nombre1, nombre2)}');

  // 3) Appel de la fonction multiplication
  print('Multiplication : ${multiplication(nombre1, nombre2)}');

  // 4) Appel de la fonction division
  dynamic quotien = division(nombre1, nombre2);
  print('la division de $nombre1 et $nombre2 est égale à $quotien');
  print('Division : ${division(nombre1, nombre2)}');

}