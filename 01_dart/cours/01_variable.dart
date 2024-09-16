/* Création d'une variable = emplacment de stockage que l'on réutilisera 
ailleurs ds le code et modifiable ou pas par la suite */
void main() {

// Déclaration de la variable, on attribue une valeur = initialisation donnée, 
  var nomDeVariable = 'toto'; // camel case, nous celle que l'on utlisera (façon d'écrire les noms de variables)

//var AutreNom; => pascal case OU var nom_var; snake case (python généralement)

  var name = 'A_Laure'; /* nom super important, être cohérent avec ce qui est stocké dedans, ne pas mattre var a =  , 
  si je ne mets pas de valeur, j'autorise tt type de valeur (integer, string)*/

// Redéfinissions de ma variable
  name = 'Virginie';


/* Liste des types de variable possibles / alloue mémoire en fonction du type car sait que pour tant de ... faut tant de mémoire
int : integer, pour les nombres entiers
double : pour les nbres à virgules flottante
String (avec majuscule) : chaîne de caractères
bool : valeurs booléennes vrai/faux - True/False
List (avec majuscule) : pour les listes d'éléments (array/tableau)
Map (avec majuscule) : pour les associations clés-valeur (array assoc / tableau associatif)
dynamic : un type de donnée pouvant changer pendant l'exécution -> utlise beaucoup de mémoire car ne sait pas ce qu'il aura
*/

// Du coup on peut écrire var number = 10 etc...
  int number = 10;
  double price = 99.99; //mettre un point et non une virgule car anglosaxon)
  bool isMajor = true;
  List fruits = ['Banane', 'Apple', 'Pear', 17]; // Si je mets List<String> je ne peux mettre le 17, n'accepte que des String
 
// Map = comme un tableau, les "," séparent les données. Ici, on a mis des string
  Map <String, dynamic> user = { // <String, dynamic> permet de typer les données mais pas obligatoire. Le premier est pour la clef, l' autre pour les valeurs
    'name': 'Johane', // = la clef (name) avec sa valeur, on met une virgule pour en déclarer une "suivante"
    'age': 26, // = la clef (age) avec sa valeur
    'haveCar': true, // = la clef (haveCar) avec sa valeur
    'cars' : ['clio', 'RangeRover'] // tableau dans le tableau (imbrication)
  };

/* Variables qui doivent rester constantes : const et final
ex : const -> le nom d'une BSD (const nomBsd = 'Domotique'), on ne veut pas qu'elle change dc const, si on fait nomBsd = 'nouveau nom', ne marche pas. 
              connu au moment/avant la compilation (qd on execute fichier). Ne peut avoir une donnée dynamique
     final -> différence avec const 
              quelque chose qui n'est pas connu avant la compilation, généralement des données dynamiques
              initialisée que pdt exécution script
*/

const String dbName = 'domotique'; // on peut la typer (String, etc...)
final time = DateTime.now(); // la même variable en const ne marchera pas


// Deux types de nombre
int x = 100;
double y = 22.9;
int z = 50;

// Les chaînes de caractère
String char = 'Bonjour $name Il fait beau aujourd\'hui.'; // plutôt la méthode de l'anti / à utiliser
// String char2 = "Bonjour $name Il fait beau aujourd'hui."; ->  on a mis "" car dans la phrase il ya un '

String char2 = "${x + z}";

// Imprime la variable
  print(nomDeVariable); 
  print(name.toUpperCase()); //name en majuscule
  print(number);
  print(price);
  print(isMajor);
  print(fruits);
  print(user);
  print(dbName);
  print(time);
  print(char);
  print(char2);
}

