// 1. Créez une fonction addition qui prend deux nombres en paramètres et renvoie leur somme.

double  addition(double x, double y)
{
  return x + y;
}

  // 2. Créez une fonction soustraction qui prend deux nombres en paramètres et renvoie leur différence.

double soustraction (double x, double y)
{
  return x -y;
}


// 3. Créez une fonction multiplication qui prend deux nombres en paramètres et renvoie leur produit.

dynamic division (double  x, double y)  // dynamic à cause du 2ème return qui n'est pas un return "nombre"
{
    if(x != 0)
    {
      return x/y;
    }
      return print('Division par 0 impossible'); // need to be a dynamic variable
}


//4. Créez une fonction division qui prend deux nombres en paramètres et renvoie leur quotient.

dynamic quotient(double x, double y)
{
  return x % y; // renvoi une valeur, fait juste le calcul, faut un print pour voir la valeur du return
}


void main() {


// 1. Créez une fonction addition qui prend deux nombres en paramètres et renvoie leur somme.
double totalAddition = addition(12,10);
print('Le total de l\'addition est $totalAddition');

// qd passe pas par une variable, pas un calcul print('addition : ${addition(nombre1, nombre2)'});

/* ou - permet de récupérer les 2 variables en print, de stocker les variables, utile si utilisé ailleurs sinon sol 1

double nombre1 = 12.0; va dans a
double nombre2 = 10.0; va dans b

double somme = addition(nombre1, nombre2);
print('L addition de $nombre1 et $nombre2 est égale à $somme');

*/

// 2. Créez une fonction soustraction qui prend deux nombres en paramètres et renvoie leur différence.

double totalSoustraction = soustraction(12,10); // ne permet pas de récupérer les arguments en print
print('Le total de la soustraction est $totalSoustraction');


// 3. Créez une fonction multiplication qui prend deux nombres en paramètres et renvoie leur produit.

double totalDivision = division(12,10);
print('Le total de la division est $totalDivision');


//4. Créez une fonction division qui prend deux nombres en paramètres et renvoie leur quotient.

double totalQuotient = quotient(257,13);
print('Le quotient est est $totalQuotient');


}

