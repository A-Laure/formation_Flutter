
/*Créez une fonction qui prend un nombre en tant que paramètre et calcule puis renvoie la valeur
absolue d’un nombre.*/



double absoluteValue(double x) // il parcourt la fonction mais pour l'instant rien ne se passe. se déclanche que si appelée ds le void main
{
 if (x < 0) 
 {
    return - x;

  }  else {
 
            return x;

          }
}
// sol Damien

int absoluteValue2(int number) // attention, number n'est pas le même number que dans le void
{

  if (number>0)

    {
      return number;

    } // pas besoin de else mais on peut

  // return number * -1; possible
      return - number;


      /* via une ternaire

      return number < 0 ? -number : number;

      */

}


// ou 3ème sol avec .abs

double absoluteV (double x ) 
{
  return x.abs(); // .abs existe pour donner l'absolu, donc tout simplement ... tjs penser si un .kkchose existe qd ce sont des maths

}

void main ()   // il va donc dans le main

{ 
  
  double verifAbsolue =absoluteValue(5);
  print('La valeur absolue est $verifAbsolue');

// sol Damien

int number = -5;
int result = absoluteValue2(number);

print('La valeur absolue de $number est $result');


// ou 3ème sol

print('La valeur absolue est : ${absoluteV(-15)}'); // { }  car des maths

}