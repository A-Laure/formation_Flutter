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

// Fonction qui affiche les infos des livres passés en paramètre
void displayBooks(List<Map<String, dynamic>> books){
  // premiere boucle pour parcourir/récupérer chaque livre 
  for(var book in books){
    // deuxieme boucle pour afficher chaque information du livre parcouru
    for(var key in book.keys){
      print(' - $key : ${book[key]}');
    }
    // print qui sert juste a sauter une ligne entre chaque livre affiché
    print('');
  }
}

// Fonction qui filtre par auteur (mais pas que, si on utilise la version avec inList on pourrait filtrer par d'autres composantes)
List<Map<String, dynamic>> filterAuthor(List<Map<String, dynamic>> books, String userInput){
  // on déclare une liste pour stocker les livres qui correspondront a la demande utilisateur
  List<Map<String, dynamic>> filteredBooks = [];
  // boucle pour parcourir/récupérer chaque livre 
  for(var book in books){
    // verification si l'auteur du livre correspond a la demande utilisateur alors
    if(book['author'] == userInput){
      // on stocke le livre dans la liste filteredBooks
      filteredBooks.add(book);
    }
  }
  // autre version qui permetttrait un filtrage plus générique pas forcément que pour les auteurs
  // for(var book in books){
  //   if(inList(book, userInput)){
  //     filteredBooks.add(book);
  //   }
  // }

  // on retourne la liste des livres filtrés
  return filteredBooks;
}

// bool inList(Map<String, dynamic> book, String userInput){

//   for(var value in book.values){
//     if(value is String && value.contains(userInput)){
//       return true;
//     }
//     return false;
//   }

// }

void main() {
  
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
      l’utilisateur
  */

  List<Map<String, dynamic>> books = [
      {
      'name': 'Les Misérables ',
      'author': 'Victor Hugo',
      'releaseYear': 1862,
      'purchaseUrl': 'https://www.amazon.fr/Mis%C3%A9rables-Victor-HUGO/dp/2266236032'
      },
      {
        'name': 'Germinal',
        'author': 'Emile Zola',
        'releaseYear': 1885,
        'purchaseUrl': 'https://www.fnac.com/a264761/Emile-Zola-Germinal'
      },
      {
        'name': 'Micromégas',
        'author': 'Voltaire',
        'releaseYear': 1752,
        'purchaseUrl': 'https://www.fnac.com/a1937961/Voltaire-Micromegas'
      },
      {
        'name': ' Le Dernier Jour d\'un condamné',
        'author': 'Victor Hugo',
        'releaseYear': 1829,
        'purchaseUrl':
            'https://www.amazon.fr/dernier-jour-dun-condamn%C3%A9/dp/2266196057'
      },
      {
        'name': 'L\'Assommoire',
        'author': 'Emile Zola',
        'releaseYear': 1877,
        'purchaseUrl': 'https://www.fnac.com/a264698/Emile-Zola-L-Assommoir'
      },
      {
        'name': 'Candide ou l\'Optimisme',
        'author': 'Voltaire',
        'releaseYear': 1759,
        'purchaseUrl':
            'https://www.fnac.com/a10704935/Voltaire-Candide-ou-l-Optimisme'
      },
  ];


  // ETAPE 1 - Afficher toutes les inofs des livres
  // for(var book in books){
  //   for(var key in book.keys){
  //     print(' - $key : ${book[key]}');
  //   }
  //   print('');
  // }
  // displayBooks(books);

  // ETAPE 2 - Filtrer par autheur 
  String userInput = 'Victor Hugo';
  // stockage dans filteredBooks du résultat de l'appel de la fonction filterAuthor 
  var filteredBooks = filterAuthor(books, userInput);

  // appel de la fonction displayBooks pour l'affichage des livres filtrés
  displayBooks(filteredBooks);

}