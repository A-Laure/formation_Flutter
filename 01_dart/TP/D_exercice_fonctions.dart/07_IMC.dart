/*
Écrivez une fonction qui prend la masse (en kilogrammes) et la taille (en mètres) d'une
personne en paramètres et renvoie son indice de masse corporelle (IMC).
*/

// exo peut se faire avec une saisie user

double calculImc(double taille, double poids )
{

return (poids / (taille*taille));

}



void main ()
{

/*  on peut déclarer deux variables
 double weight = 70.;
 double height = 1.75;

 double bmi = calculImc(weight, height);
*/
double imc = calculImc(1.72,63);
print('L\'IMC est égale à $imc'); 

}

