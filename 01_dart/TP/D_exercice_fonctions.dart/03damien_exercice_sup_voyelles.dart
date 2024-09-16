/*
Créez une fonction qui prend une chaîne de caractères en tant que paramètre et supprime les
voyelles d’une chaîne de caractères puis renvoie la chaîne modifiée.
*/

String deleteVowels (String text) 
{
 
   // text = text.toLowerCase(); possible, le pb sera au moment du renvoi de la valeur finale, tout sera en minuscule dc 1ere lettre ne sera pas en maj et World non plus

  List<String> vowels = ['a','e','i','o','u','y','A','E','I','O','U','Y']; 
  // mis les maj car on utilisera pas le toLowerCase qui fait perdre les maj qui sont sur les consonnes que l'ont va garder
  String result = '';


// on fait un for pour parcourir chaîne de caractères que l'on reçoit en paramètre (ici stocké ds la variable text)

    for (int i = 0; i < text.length; i++)
      { // le i nous sert à parcourir notre chaîne de text caractère par caractère (car chaîne de carcatères fonctionne comme des listes indéxées)

          if(!vowels.contains(text[i])) // le "!" fait l'inverse, "contains" permet de vérifier si élément entre () est contenu dans la variable (ici liste de caractères)
          // si le caractère à l'index i de la chaîne n'est pas dans la liste des voyelles alors on ajoute le caractère de l'index i dans result
          // en fait on fait "à l'envers" , "si n'est pas dans la liste" au lieu de "si dans la liste" (plus simple)
            {
                result += text[i]; // équivalent result = result + text[i]; 
            }
      }

      return result; // qd on arrive à la fin de la boucle, on retourne le résultat
  
}


void main() 
{

    String text ='Hello, World';
    String result = deleteVowels(text);

    print('${deleteVowels(text)}');

     // ou 

    print(result);



}

