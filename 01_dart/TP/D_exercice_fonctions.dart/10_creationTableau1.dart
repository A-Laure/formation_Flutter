/*
Créez un tableau de la structure suivante :

var books = [
{
'name' : 'nom du livre',
'author' : 'nom de l\\'auteur',
'releaseYear' : 2023,
'purchaseUrl' : 'http://exemple.com'
}
];

Remplissez un tableau de 6 livres.
Écrivez un programme qui permet de filtrer les livres en fonction de l’auteur demandé par
l’utilisateur.
*/

import 'dart:io';

List<Map<String, dynamic>> finalList = [];

void authorFilter()

{

      List<Map<String,dynamic>> bibliotheque = [ 

          {
          'name' : 'Titre 1',
          'author' : 'Auteur1',
          'releaseYear' : 2018,
          'purchaseUrl' : 'http://exemple1.com'
          },
          {
          'name' : 'Titre 2',
          'author' : 'Auteur2',
          'releaseYear' : 2019,
          'purchaseUrl' : 'http://exemple2.com'
          },
          {
          'name' : 'Titre 3',
          'author' : 'Auteur 2',
          'releaseYear' : 2020,
          'purchaseUrl' : 'http://exemple3.com'
          },
          {
          'name' : 'Titre 4',
          'author' : 'Auteur1',
          'releaseYear' : 2021,
          'purchaseUrl' : 'http://exemple4.com'
          },
          {
          'name' : 'Titre 5',
          'author' : 'Auteur5',
          'releaseYear' : 2022,
          'purchaseUrl' : 'http://exemple5.com'
          },
          {
          'name' : 'Titre 6',
          'author' : 'Auteur 6',
          'releaseYear' : 2023,
          'purchaseUrl' : 'http://exemple6.com'
          }

      ];

      //print(bibliotheque);

        print('Veuillez saisir un auteur :');


        dynamic authorResearch = stdin.readLineSync()!; // le user saisi un auteur
        String author = authorResearch.toString().toLowerCase(); // je le transforme en string et en minuscule
        print('Vous avez choisi l\'auteur suivant : $author');

      // bool tant que true, si true continue

bool isValid = true; //tant que la condition est vrai, je continue ma boucle

while(isValid)
      { 
          print('Je suis dans le while');

          for (int i=0; i < bibliotheque.length; i++) //en partant de i = 0 juqu'à la "longeur" de la Map
            {
              print('je suis dans le for1');
              print('Nous sommes à l\'index : $i');
              

              if (author == bibliotheque[i]['author']) // si la variable author correspond à 1 des lignes selon index
              {
                     print('je suis dans le if');
                     finalList.add(bibliotheque[i]); // j'ajoute ma/mes lignes de la MAP  finale
                    
                    //isValid = true;         
                              }             
                      
                    
                
              }

                  

                  

            }
    

      }



void main()
{

authorFilter();
print(finalList);

}