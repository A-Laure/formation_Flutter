/*
Créez un tableau de la structure suivante :

movies = [
{
'title': 'titre du film',
'year': 1994,
'actors': ['acteur1', 'acteur2']
},
];

Écrivez un programme qui permet de filtrer les films en fonction de leur année de sortie.
( vous devez faire 2 fonctions une qui tri avant 2000 et une après 2000)
*/

// Fonction qui permet d'afficher toutes les infos des films passés en parametre
void displayMovies(List<Map<String, dynamic>> movies){
  // on parcourt chaque film de la liste et on affiche le titre, l'année et les acteurs
  for(var movie in movies){
    print('${movie['title']}, ${movie['year']}');
    // deuxieme boucle pour afficher chaque acteur de la liste
    for(var actor in movie['actors']){
      print(actor);
    }
    print('');
  }
}

// Fonction qui tri tous les films avant 2000 passés en parametre  
List<Map<String, dynamic>> filterByOld(List<Map<String, dynamic>> movies){
  // on déclare une liste pour stocker les livres avant 2000
  List <Map<String, dynamic>> before2000 = [];
  // on parcourt chaque film de la liste
  for(var movie in movies){
    // si l'année du film est inferieur a 2000 alors 
    if(movie['year'] < 2000){
      // on le stocke dans la liste before2000
      before2000.add(movie);
    }
  } 
  // on retourne la liste des films triés
  return before2000;
}

// Fonction qui tri tous les films apres 2000 passés en parametre  
List<Map<String, dynamic>> filterByRecent(List<Map<String, dynamic>> movies){
  // on déclare une liste pour stocker les livres apres 2000
  List <Map<String, dynamic>> after2000 = [];
  // on parcourt chaque film de la liste
  for(var movie in movies){
    // si l'année du film est superieur ou egale a 2000 alors 
    if(movie['year'] >= 2000){
      // on le stocke dans la liste after2000
      after2000.add(movie);
    }
  } 
  // on retourne la liste des films triés
  return after2000;
}

void main() {
  
 

  List<Map<String, dynamic>> movies = [

    {
      'title' : 'Film1',
      'year' : 1994,
      'actors': ['acteur1', 'acteur2']
    },
    {
      'title' : 'Film2',
      'year' : 1983,
      'actors': ['acteur1', 'acteur2']
    },
    {
      'title' : 'Film3',
      'year' : 2003,
      'actors': ['acteur1', 'acteur2']
    },
    {
      'title' : 'Film4',
      'year' : 2010,
      'actors': ['acteur1', 'acteur2']
    },

  ];

  // ETAPE 1 - Affichage
  // Méthode 1 - Affichage des films
  // for(var movie in movies){
  //   print('${movie['title']}, ${movie['year']}');
  //   for(var actor in movie['actors']){
  //     print(actor);
  //   }
  //   print('');
  // }

  // Méthode 2 - Affichage des films
  // for(var movie in movies){
  //   for(var key in movie.keys){
  //       if(movie[key] is List){
  //         for(var value in movie[key]){
  //           print('- $value');
  //         }
  //       } else{
  //         print('${movie[key]}');
  //       }
  //   }
  //   print('');
  // }

  // ETAPE 2
  // tri avant 2000 et apres 2000 sans fonction
  
  // print('Films avant 2000');
  // for(var movie in movies){
  //   if(movie['year'] < 2000){
  //     print('${movie['title']}, ${movie['year']}');
  //   }
  // } 

  // print('Films après 2000');
  // for(var movie in movies){
  //   if(movie['year'] >= 2000){
  //     print('${movie['title']}, ${movie['year']}');
  //   }
  // } 

  // ETAPE 3 - tri avec les fonctions

  // on stocke le resultat de l'appel de la fonction de tri par film apres 2000
  List<Map<String, dynamic>> recentMovies =  filterByRecent(movies);
  print('Films après 2000');
  // Appel de la fonction pour afficher toutes les infos des films
  displayMovies(recentMovies);

   // on stocke le resultat de l'appel de la fonction de tri par film avant 2000
  List<Map<String, dynamic>> oldMovies =  filterByOld(movies);
  print('Films avant 2000');
  // Appel de la fonction pour afficher toutes les infos des films
  displayMovies(oldMovies);
}