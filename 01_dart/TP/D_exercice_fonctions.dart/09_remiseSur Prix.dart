/*
Écrivez une fonction qui prend un montant total d'achat et un pourcentage de remise, puis
renvoie le montant après application de la remise.
*/



double remisePourcentage (double prix, double remise)
{

return (prix * ((100 - remise))/100);

}

void main ()          ////// avec USER voir exercice sur la TVA ///////

{

  double totalAmount = 150.0;       // on peut mettre les mêmes noms que dans la fonction
  double discountPercent = 10.0;

  double discountTotal = remisePourcentage(totalAmount, discountPercent);

  print('Le montant remisé est de $discountTotal');

/* ou double calculPrixRemise = remisePourcentage (1000, 50.5);
print('Le prix remisé est $calculPrixRemise euros');
*/

}