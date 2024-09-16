
import 'dart:io';
void main() { 


// Exercices bonus 3 Écrire les programmes pour dessiner les figures suivantes avec des étoiles (*****):

//un rectangle de 8 étoiles de long et 5 étoiles de large

print('Rectangle :');
 for (int i = 0; i<5; i++)
   {  for(int j = 1; j < 8; j++)  // on pourrait remettre i car i est dans un bloc
      {
        stdout.write('* ');
      }
        stdout.write('\n'); // à la place du print
   }

//un carré de 6 étoiles de côté

print('Carré :');
for (int i = 0; i<6; i++)
   {  for(int j = 1; j <7; j++)  // on pourrait remettre i car i est dans un bloc
      {
        stdout.write('* ');
      }
        stdout.write('\n'); // à la place du print
   }

//un triangle rectangle isocele de 7 étoiles de côté a=b c=racine carrée de b*/

print('Triangle rectangle isocele :');
// Paramétrage du 7 étoiles de côté
for (int i = 0; i<7; i++){ // 1ere boucle parcourt les lignes du triangle
// "Faire la zone pleine'
String zonePleine = '';
   for (int j = 1; j<=i; j++){ // 2ème boucle ajoute les étoiles en fonction de la valeur de i
      zonePleine += ' * ';
}
    print(zonePleine);
}

// ou 

print('Triangle rectangle isocele 2 :');

for (int i = 1; i<=7; i++) // 1er tour i = 1 je rentre ds le for, j=1 et on boucle jusqu'à J = 1
{                          // 2eme tour i = 2 on rentre ds 2 ème boucle jusqu'à ce que j=2
       for(int j = 1; j <= i; j++ )
    {
       stdout.write('*  ');
    }
stdout.write('\n');
}
 
}
