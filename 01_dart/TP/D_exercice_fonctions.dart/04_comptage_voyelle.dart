/*
Créez une fonction qui prend une chaîne de caractères en tant que paramètre et renvoie le
nombre de voyelles (a, e, i, o, u, y) présentes dans la chaîne. La fonction doit être insensible à
la casse, ce qui signifie qu'elle doit compter à la fois les voyelles en majuscules et en
minuscules. Testez la fonction avec différentes chaînes.
*/


void noVoyelles (String word) 
{
 
    String newWOrd = word.toLowerCase(); // je le mets en minuscule mais là on pert maj en restitution (voir 04damien)
    int longeurWord = newWOrd.length;  // je cacule sa longueur
    int result = 0;

    for (int i=0; i<longeurWord; i++) // je teste chaque index si une voyelle
    
     {
        if (newWOrd[i] == 'a' || newWOrd[i] == 'e' || newWOrd[i] == 'i' || newWOrd[i] == 'o' || newWOrd[i] == 'u')
        {
             print('je suis dans ma boucle [$i] et j\'ai trouvé la voyelle  dans $newWOrd'); // je veux imprimer la voyelle
             result = result + 1;                      
        }       
      }
    
       print('Il y a $result voyelles dans le mot');
       //print('Il y a $result voyelles dans le mot /*${noVoyelles(texte)}*/');
}



void main ()
{

 String texte = 'google';
noVoyelles(texte);
// print pour afficher, il y a x voyelles dans le mot $texte








}
