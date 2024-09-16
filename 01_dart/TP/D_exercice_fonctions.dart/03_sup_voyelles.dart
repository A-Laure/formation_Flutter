/*
Créez une fonction qui prend une chaîne de caractères en tant que paramètre et supprime les
voyelles d’une chaîne de caractères puis renvoie la chaîne modifiée.
*/

String noVoyelles (String word) 
{
 
    String newWord = word.toLowerCase(); // je le mets en minuscule pas bon car fait perdre les maj qu étaient sur les consonnes que l'on voudra garder
    int longeurWord = newWord.length;  // je cacule sa longueur
    //String result = newWOrd;

    for (int i=0; i<longeurWord; i++) // je teste chaque index si une voyelle
    
     {
        if (newWord[i] == 'a' || newWord[i] == 'e' || newWord[i] == 'i' || newWord[i] == 'o' || newWord[i] == 'u' || newWord[i] == 'y')
        {
             print('je suis dans ma boucle [$i]');
             newWord = newWord.replaceFirst(newWord[i], '');
             longeurWord -= 1;
             i-=1;
             print(newWord);
             
        }              
        
      }
 
      return newWord;
      
}


void main() 
{

    String word='aan';
    print('${noVoyelles(word)}');

}

