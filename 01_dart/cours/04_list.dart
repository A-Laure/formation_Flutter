
import 'dart:io'; // pour la saisie utilisateur
void main() {



// Permet de stocker une infinité de données

// LIST : Une liste est un ensemble d'élément du même type. Elles sont similaires aux tableaux en C, C++ et Java. 
//Les listes servent principalement à créer des collections de données pouvant se répéter.

var nombres = [1, 2, 3, 4, 'go']; // on peut mélanger, chiffres, alpha etc...

// add = pour ajouter une donnée dans le tableau.
nombres.add('toto'); // Si au départ on a mis que des chiffres, il n'acceptera pas la string

print(nombres);
print(nombres[0]); // index du tableau, commence toujours à 0, va printer 1

// exemple mais vaut mieux un map, juste pour l'exemple. Bien que le dynamic, il le détecte auto
List<dynamic>pays = ['France', 'Paris', 67, true,['baguette', 'croissant','béret']];

/* on pourrait faire simplement : var pays = ['France', 'Paris', 67, true,['baguette', 'croissant','béret']];
  => mais prog non optimisé, vaut mieux list avec <int (ou autre)>, -> prog sait quel "place de stockage" lui sera nécessaire */

// variable qui récupère une API : var pays = listePaysApi;

/* List dans une list -> que des List à l'intérieur de la 1ère List - ds l'ideal faire à la ligne pour meilleure lecture
On parle de dimension pour la hiérarchie des index 
   
   List<List> pays = [ [baguette, fromage, beurre], 
                     [vin, coca, rosé]];

 Extraire fromage dans alist de la list : pays[0][2];
*/

/* mettre en majuscule france dans la variable
pays[0] = 'FRANCE';
toUpperCase c'est pour le print
pays[0] = pays[0],toUpperCase(); -> le change dans la liste car on a redédfini sur la variable
*/



  print(pays[0]); // affiche France
  print(pays[4]); // affiche true
  print(pays[4][1]); // affiche baguette / 4 car on part de l'index 0 dc atteint le tableau en "position 5" puis affiche l'index 1 de ce tableau

  // length, first, last, isEmpty = propriété pour les listes
  // plus facile de lire la ligne de droite à gauche pour bien lire "l'ordre"

/*
  print(pays.length); // nombre d'éléments dans le tableau (attention!! Le 1er tableau) affichera 5
  print(pays[4].length); // donnera le nombre d'éléments du "sous tableau)" soit 3
  print(pays[4][2].length); // nombre de caractères d'un élément soit 5 (nombre de lettres de béret)
  print(pays.first); // affiche France - affiche 1ère valeur du tableau "initial" soit France
  print(pays.last); // affiche le "sous tableau" - affiche dernière valeur du tableau "initial"  soit ['baguette', 'croissant','béret']
  print(pays.last.last); // affiche le dernier élément du "sous tableau" soit béret
  print(pays.last.first); // affiche le premier élément du "sous tableau" soit baguette

  //OU
  print(pays[4].last); // affiche le dernier élément du "sous tableau" soit béret

*/

  if(pays.isEmpty) { // comme un booleen, si liste vide, vrai / faux
    print('Liste vide');
    pays.add('USA'); //.add est une méthode // ne le rajoute pas car il est dans une condition qui dit "si vide" or ici pays non vide.
    
  } else { 
    print('Il y a au moins un élément dans la liste');
    final String capital = pays[1];
    print(capital);
    
  }

/* LES METHODES (petit cube qui apparaît ds l'ascenesur de propositions "d'outils" qd on tape nomVariable.) = fonction dans une classe
on appelle ici des "méthodes natives aux objets"

-> add(élément)
-> addAll(plusieurs éléments)
-> clear() -> pour tt effacer
-> indexOf(element) -> retourne l'index d'un élément
-> remove(element)
-> contains(object? element) -> 
-> insertAll insère une valeur à un inddex précis
*/

List<String> voitures = ['Renault', 'Citroen', 'Peugeot'];   // mets un "s" à la variable qd un tableau pour lecture plus facile
voitures.add('Tesla');
voitures.addAll(['Porsche', 'BMW']); // rajoute ces 2 éléments
voitures.clear(); // efface tout le tableau
print(voitures);
voitures.addAll(['Porsche', 'BMW']); // rajoute ces 2 éléments
print(voitures.indexOf('BMW, 2')); // le 2 indique qu'il ne doit pas prendre le 1er BMW qu'il trouve -> affichera -1 car pas 2 x BMW ds notre tableau
print(voitures.indexOf('BMW')); // va prendre le 1er BMW qu'il trouve -> affichera 1 dans notre cas
print(voitures);



print('EXERCICE 1');

/* Exercice : créer une liste de 7 pays
afficher le nombre de pays
le 1er pays de la liste
sup la liste
affiche vide ou pas avec message 
add 3 pays
en supprimer 1
*/

List<String> countries = ['France', 'Italie', 'Espagne', 'Suisse', 'Allemagne', 'Hollande', 'Londres'];
print(countries);
print('Il y a ${countries.length} pays');
print('Le premier pays est ${countries[0]}'); //ou ${countries.first}

countries.clear();

print('Solution if... else');
if (countries.isEmpty) { // va marquer la liste est vide car j'ai fait clear avant
  print('La liste est vide');
} else {
  print('Liste n\' est pas vide');
}

// ou une ternaire 
print('Solution condition ternaire'); 
print('La liste est vide? ${countries.isEmpty ? 'oui' : 'non'}');


countries.addAll(['Norvège', 'Autriche', 'Pologne']); // ne marquera que ces 3 là car on a fait clear du 1er tableau

print(countries);

countries.removeAt(1); // removeAt enlève l'index que l'on a choisi   removeRange enlève section entre 2 éléments

/*
var toto = 0;    en Dart, 0 n'est pas considéré comme null
*/
 
 print('EXERCICE 2');
 
 // Faire panier et faire saisir utilisateur de saisir et sélectionner un article (un index)

print('Solution avec liste au départ');
print('Veuillez sélectionner un article dans votre panier :');

List<String> articleProposes = ['1 - Ballon', '2 - Raquette', '3 - Chaussures'];
print(articleProposes);

String inputBasket = stdin.readLineSync()!;
print('Vous avez choisi : $inputBasket');

switch (inputBasket) {
  case '1' : // mis en string comme ça, lit tt en string, même un chiffre et du coup peut faire le test sur tout et renvoi sur default si autre chose que un chiffre
  // si ont met juste 1 au lieu de '1', le default ne marche pas si on tape ballon car ne reconnaît pas un int et il ne se passe rien
  print('Vous avez avez mis ds votre panier : ${articleProposes[0]}');
  break;

  case '2' :
  print('Vous avez mis ds votre panier : ${articleProposes[1]}');
  break;

  case '3' :
  print('Vous avez mis ds votre panier : ${articleProposes[2]}');
  break;

  default :
    print('Votre saisie ne convient pas, veuillez taper 1, 2 ou 3');
    break;
  }

  // Solution panier vide

print('Solution avec panier vide au départ');

List<String> products = ['T-Shirt', 'Pantalon', 'Chaussures', 'Pull'];

List<String> cart = [];
  print('Quel article souhaitez vous?');
  print('1 - ${products[0]}');
  print('2 - ${products[1]}');
  print('3 - ${products[2]}');
  print('4 - ${products[3]}');

  final int userReponse = int.parse(stdin.readLineSync()!);

// final int userReponse = int.parse(stdin.readLineSync()!)-1;  on met -1 car par ex : index 2 = valeur num 3

print('Solution 1 / Vous avez choisi $userReponse');
print('Solution 2 / Vous avez choisi ${products[userReponse - 1]}');

 // products[2] peut s'écrire products[userResponse - 1] car l'userRespnse va faire le chois 3 qui est l'index 2 soit Chaussures

cart.add(products[userReponse]);

products.removeAt(userReponse); // enlève le choix de l'user de la liste

print('Produit disponible $products');

print('Panier : $cart');



/* MAP (dictionnaires) -> Map<K, V> class   key / value

Chaque clé n'apparaît qu'une seule fois dans le dictionnaire, mais vous pouvez utiliser la même valeur plusieurs fois pour plusieurs clés.

Les MAP, ainsi que leurs clés et valeurs, peuvent être itérées. L'ordre d'itération est défini par le type individuel de carte :

- HashMap simple n'est pas ordonné (aucun ordre n'est garanti)
- SplayTreeMap itère les clés dans l'ordre trié.

Il n'est généralement pas autorisé de modifier la MAP (ajouter ou supprimer des clés) pendant qu'une opération est effectuée sur la MAP, 
par exemple dans des fonctions appelées lors d'un appel forEach ou putIfAbsent. Modifier la MAP lors de l'itération des clés ou des valeurs
peut également interrompre l'itération.

Il n'est généralement pas permis de modifier l'égalité des clés (et donc pas leur hashcode) tant qu'elles sont dans la map. Certains sous-types
spécialisés peuvent être plus permissifs, auquel cas ils doivent documenter ce comportement.

HashMap 
HttpSession 
LinkedHashMap 
MapBase 
MapView 
UnmodifiableMapBase 
UnmodifiableMapView 

Syntaxe :

Map<typeCle, typeValeur> nom = Map();
nom = {cle1 : valeur1, cle2 : valeur2};
ou
Map<typeCle, typeValeur> nom = {cle1 : valeur1, cle2 : valeur2};

*/ 

Map<String, String> paysEtCapitales = Map();
paysEtCapitales = {
    "Afrique du Sud": "Pretoria",
    "Belgique": "Bruxelles",
    "Brésil": "Brasilia",
    "Irak": "Bagdad",
    "Japon": "Tokyo"
};

print(paysEtCapitales);
/*
On accède à une valeur par sa clé -> nomDictionnaire[clé]

Propriétés :

length	retourne le nombre d'élément du dictionnaire
keys	retourne un itérable des clés du dictionnaire
values	retourne un itérable des valeurs du dictionnaire
isEmpty	retourne true s'il n'y a pas d'éléments dans le dictionnaire et false si il y a au moins un élément


Méthode foreach()

Pour les dictionnaires, la méthode forEach( ) prend en paramètre une fonction qui a deux paramètres. Le premier
paramètre désigne la clé et le deuxième désigne la valeur assignée à cette clé.

*/
paysEtCapitales.forEach((pays, capitale) =>
      print("pays : ${pays.toUpperCase()}, capitale : $capitale ")
          );
/*
MAP()
    Crée un LinkedHashMap vide.
    
Map.from (MAP other)
    Crée un LinkedHashMap avec les mêmes clés et valeurs que les autres.
    
Map.fromEntries (Iterable<MapEntry<K, V>> entries)
    Crée une nouvelle MAP et ajoute toutes les entrées.
   
Map.fromIterable (Iterable itérable, {K key (élément dynamique) ?, V value (dynamic element) ?})
    Crée une instance Map dans laquelle les clés et les valeurs sont calculées à partir de l'itérable.

Map.fromIterables (Iterable<K> keys, Iterable<V> values)
    Crée une MAP associant les clés données aux valeurs données.
    
MAP.identity()
    Crée une MAP d'identité avec l'implémentation par défaut, LinkedHashMap.
    
Map.of(Map<K, V> other)
    Crée un LinkedHashMap avec les mêmes clés et valeurs que les autres.

Map.unmodifiable(Map autre)
    Crée une MAP basée sur le hachage non modifiable contenant les entrées des autres.



 */   
}





