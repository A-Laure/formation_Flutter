
void main() {


/* Cours Damien

  Map<K, V> class   key / value  Map est une classe qui déclare une variable via un tableau
  - une Map n'est pas itérable
  - Map est une classe / .lenght est une propriété /  addAll (par ex) est une méthode (=une action) car des () où je transmets des paramètres
  - Chaque clé n'apparaît qu'une seule fois dans le dictionnaire, mais vous pouvez utiliser la même valeur plusieurs fois pour plusieurs clés.
  - Map servent à structurer les données de façon le plus cohérent possible
  - = tabeau associatif / php  dictionnaire/python,  JS = objet
  - On appelle la valeur grâce à la clef (List grâce à l'index : users[0) -> en "Map" -> users['name]; où name est la clé, renverra la valeur ex : Alaure
  - 98% du temps ce sera String,String

   Propriétés :

length	retourne le nombre d'élément du dictionnaire
keys	retourne un itérable des clés du dictionnaire
values	retourne un itérable (toutes les cles du tableau) des valeurs du dictionnaire
isEmpty	retourne true s'il n'y a pas d'éléments dans le dictionnaire et false si il y a au moins un élément


   on pourrait en List :

   List users : {

{'name' : 'alaure'},
{'name' : 'tom'},
{'name' : 'ken'},

   }



*/

// Ex de Damien

Map user = {     // = List user = ['ken', 'dd@.fr, 12/06/22]
  'name' : 'alaure',
  'email' : 'dd@.fr',
  'date' : '12/06/22',
  'passions' : ['foot', 'curling', 'oiseau'],
  'adresse' : {
                'rue' : 3,
                'code postal' : '34000',
              }
};

print(user['adresse']['code postal']); //print 34000
print(user['passions'][2]); //print oiseau
user['email']; // en Map, plus précis, visuel  en List => utilisateur[1]; beaucoup moin visuel

int i = 2; // nous permetra dans les boucles de changer la valeur (i++)
print(user['passions'][i]); //print oiseau  

/* On peut déclarer la clé en variable
   String cle = 'email';
   print(user[cle]);
*/

// Autre exemple

Map<String,String>paysEtCapitale = {     
  'japon' : 'tokyo',
  'canada' : 'Ottawa',
  'australie' : 'camberra',
  'afriqueDuSud' : 'pretoria',    // dans la pratique,une peut s'écrire clé s'écrit comme ça 
};

print('La capitale de l\'Australie est ${paysEtCapitale['australie']}');  // affiche 'La capitale ... est camberra

print(paysEtCapitale.entries); // (MapEntry(japon:tockyo), MapEntry(canada : ottawa) etc...)
print(paysEtCapitale.containsValue('pretoria'));  // va renvoyer vrai (si trouve la valeur) ou faux (si trouve pas), va servir dans des conditions


paysEtCapitale.addEntries(<String, String> {'Turquie' : 'Istanbul'}.entries); 
paysEtCapitale['turquie'] = 'istabul'; // même effet que ci-dessus mais en beaucoup plus simple!!!

// spread permet d'ajouter une map dans la Map ou pour les List  -- spread pas courant
// exemple : 2 listes de user et on les "assemble" pour en faire qu'une

Map<String, String> newPays = {
  'france' : 'paris',
  'italie' : 'rome',

};
paysEtCapitale = {...paysEtCapitale, ...newPays};
print(paysEtCapitale);

// forEach() .... c'est une méthode qui fait une boucle

// équivalent dans les boucles = forIn()

paysEtCapitale.forEach((key, value) 
    {
      print('$key a pour capitale $value');
    }
   );  


/*Exemple de boucle :

List<String>fruits = ['banane', 'pomme', 'fraise', 'kiwi'];

for(int i = 0; i < fruits.length; i++) {

    print(i);               va afficher 0 puis 1 puis 2 puis 3
    print(fruits[i]);       affiche les valeurs une par une banane puis pomme etc...
}
*/





/* Trouver sur internet



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


Méthode foreach() :  Applique une action à chaque paire clé/valeur de la MAP


Pour les dictionnaires, la méthode forEach( ) prend en paramètre une fonction qui a deux paramètres. Le premier
paramètre désigne la clé et le deuxième désigne la valeur assignée à cette clé.


paysEtCapitales.forEach((pays, capitale) =>
      print("pays : ${pays.toUpperCase()}, capitale : $capitale ")
          );

MAP()
    Crée un LinkedHashMap vide.
    factory
Map.from (MAP other)
    Crée un LinkedHashMap avec les mêmes clés et valeurs que les autres.
    factory
Map.fromEntries (Iterable<MapEntry<K, V>> entries)
    Crée une nouvelle MAP et ajoute toutes les entrées.
   factory
Map.fromIterable (Iterable itérable, {K key (élément dynamique) ?, V value (dynamic element) ?})
    Crée une instance Map dans laquelle les clés et les valeurs sont calculées à partir de l'itérable.
    factory
Map.fromIterables (Iterable<K> keys, Iterable<V> values)
    Crée une MAP associant les clés données aux valeurs données.
    factory
MAP.identity()
    Crée une MAP d'identité avec l'implémentation par défaut, LinkedHashMap.
    factory
Map.of(Map<K, V> other)
    Crée un LinkedHashMap avec les mêmes clés et valeurs que les autres.
    factory
Map.unmodifiable(Map autre)
    Crée une MAP basée sur le hachage non modifiable contenant les entrées des autres.
    factory
 */  


















































}





