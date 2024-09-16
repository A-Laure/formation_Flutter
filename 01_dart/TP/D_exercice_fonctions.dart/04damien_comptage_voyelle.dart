/*
Créez une fonction qui prend une chaîne de caractères en tant que paramètre et renvoie le
nombre de voyelles (a, e, i, o, u, y) présentes dans la chaîne. La fonction doit être insensible à
la casse, ce qui signifie qu'elle doit compter à la fois les voyelles en majuscules et en
minuscules. Testez la fonction avec différentes chaînes.
*/



List<String> vowels = ['a','e','i','o','u','y'/*,'A','E','I','O','U','Y'*/]; // on ne met pas maj car plus bas toLowerCase mais juste pourle test pas en restitution
int result = 0;


int noVoyelles (String word) 
{
    for (int i = 0; i < word.length; i++)
      { 

          if(vowels.contains(word[i].toLowerCase())) // // si la liste vowels contient la lettre à l'index[i] 
                                //toLowerCase mais juste pourle test pas en restitution
            {
               result ++; // faire result = result + 1 ou result += 1;
            }
      } 
               return result;
      
}



void main ()
{

String text = 'cOmbien de voyElles';
noVoyelles(text);
print('Il y a $result voyelles dans la chaîne de caractère "$text".'); 









}
