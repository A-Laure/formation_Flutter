/*
Une fonction est un bloc de code qui effectue une tâche spécifique. Au lieu d'écrire le code complet autant de fois que nécessaire,
on crée une fonction que l’on appellera pour l'exécuter, ce qui peut aussi alléger le code, le rendre plus lisible. Les fonctions 
permettent de diviser le problème que veut résoudre le code en plusieurs parties indépendantes ou interdépendantes.
Une fonction contient des déclarations et des instructions et ces déclarations composent le corps de la fonction.



Une fonction définie par l'utilisateur est toujours définie hors de la fonction principale main (pas obligatoire)

  - nom_de_la_fonction. Chaque fonction a un nom. Ce nom servira plus tard au moment de l'appelle de cette fonction. Le nom de la fonction
    doit refléter la tâche de cette fonction.
  - paramètres sont les informations fournies à la fonction.
  - type_de_retour. La spécification du type de retour d'une fonction n'est pas obligatoire. Si il existe, le type de retour est de type de donnée du résultat que la fonction retour à la fin de son exécution. 
    Quand une fonction ne retourne aucune valeur, la fonction retourne implicitement la valeur null.Quand une fonction ne retourne aucune valeur,
    on peut définir son type de retour comme étant void.
  - le corps de la fonction est la partie de la fonction qui comporte les instructions à exécuter à l'appel de la fonction. Elle définit la tâche que la fonction fait.

-> void qd on attend rien pas de type retour (return)
-> si return -> double ou int etc...

*/


// Damien 1

/*
- On crée une fonction qui est réutilisable (permet de faire quelque chose sans le réécrire à chaque fois)
- On fait appel à la fonction seulement au besoin
- Doit être appelée pour être excutée alors que if ou autre, s'exécute automatiquement   
- Bien regarder la portée des variables, on peut utiliser par exemple deux fois le même nom du memnt que pas ds le même bloc
- Dart lit d'abord les fonctions, la déclaration peut se faire qd on veuton fait comme on veut !! dans certains langages faut déclarer avant d'exécuter
   -> mieux de déclarer avant, plus clair
- le ? autorise que la valeur soit nulle
    
*/

/*  Fonction sans retour valeur
  
   TypeRetour nomDeLaFonction(TypeParametre1 parametre1, TypeParametre2 parametre2)
   {

        instructions 

   }

*/

// Déclaration de la fonction

void /* = néant, on ne renvoit rien, pas de return */afficherMessage(String message){
    print(message);
}

// Fonction avec retour valeur - le int ou autre est le typage du retour
int somme(int chiffre1, int chiffre2) // on met autant de paramètres que l'on veut
{
  return chiffre1 + chiffre2;
}

// fonction avec des paramètres positionnels, ordre est important car renvoi dans cet ordre
String direBonjour(String prenom, String nom)
{
  return 'Bonjour $prenom $nom';
}

// fonction avec des paramètres nommés  -> on rajoute des {}, le 'null safety' soit le ?
String direBonjour2({String? prenom, String? nom}){
  return 'Bonjour2 $prenom $nom';
}

// fonction avec des paramètres nommés et valeur par défault pour le parametre nom
String direBonjour3({String? prenom, String nom = 'Doe'})
{
  return 'Bonjour3 $prenom $nom';
}

// fonction avec des paramètres optionnels ( /!\ on ne peut mixer les parametres nommés et optionnels)
dynamic direBonjour4(String? prenom, [int? age])
{
  return 'Bonjour4 $prenom vous avez $age ans';
}


void main() {
  
  

  
  // l'appel de la fonction
  String texte = 'tata';
  afficherMessage(texte);
 
  int resultat = somme(2,5);   // reverra 5 - attention non stocké -
  print(resultat); // on va stocker le résultat du calcul ds la variable résultat


// Appel fonction avec des paramètres positionnels
  String bonjour = direBonjour('Ken','Roche'); 
  print(bonjour); // va afficher Bonjour ken roche


/* Appel fonction avec des paramètres nommés  -> on rajoute des {}
    ici nom et prénom inversé par rapport aux 
    paramètre de la fonction initiale mais les mettra ds la bon ordre 
*/

   String bonjour2 = direBonjour2(nom: 'Roche', prenom: 'Ken'); /* on aurait pu les inverser car nommés au départ dc les remettre ds le même ordre
   mais utilise plus de ressources*/
   print(bonjour2);

// Appel fonction avec des paramètres nommés et valeur par défault pour le parametre nom
  String bonjour3 = direBonjour3(prenom: 'Ken');
  print(bonjour3);


// Appel fonction avec des paramètres optionnels ( /!\ on ne peut mixer les parametres nommés et optionnels)
  dynamic bonjour4 = direBonjour4('Ken');
  print(bonjour4);


}
