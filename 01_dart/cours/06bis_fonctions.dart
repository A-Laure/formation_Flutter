dynamic additionner()
{

  print('je fais une addition'); // n'aura plus lieu d'être car généralement "en bas"

  //int somme = 2 + 3;
  
  int nombre1 = 2;
  int nombre2 = 3;

  int somme = nombre1 + nombre2;

  return 'je fais une addition qui est églae à $somme'; // retoune une valeur et non la variable . Valeur non stockée
  // pour récupérer la veleur, on fait généralement un print dans le "void" 


}

void main ()
{

String text = additionner();
print('Résultat venant de text : $text');

additionner();

print(additionner());



}