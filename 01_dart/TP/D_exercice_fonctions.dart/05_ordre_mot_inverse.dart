/*
Créez une fonction qui prend une chaîne de caractères en tant que paramètre et renvoie la
chaîne avec l'ordre des mots inversés. Chaque mot dans la chaîne doit rester inchangé, mais
l'ordre des mots doit être inversé. Testez la fonction avec différentes chaînes de caractères.
*/

String invertedWordOrder(String text)
{
// on met un espace dans la ' ' (=pattern) pour slipter les mots. Il sait qu'un espace sépare 2 mots

  List<String> words = text.split(' ');

  List<String> invertedWords = words.reversed.toList(); // reversed ne récupère pas le typage List dc obligé de remettre toList
  // toList car on attend une liste, car reversed retransforme en iterable (séquence d'éléments, énumération d'éléments, éléments bruts) pas une liste

  /* autre ex avec un int: List<int> numb [2, 5, 5];
                           List<int> inverseNumb = numb.reversed.toList();
  */

  print(invertedWords);
  return invertedWords.join(' ');
  
}




void main()
{

String text1 = 'Hello, World !';
String text2 = 'Programming is Awesome';

String result1 = invertedWordOrder(text1);
String result2 = invertedWordOrder(text2);

print('Chaîne inversée de : $result1');
print('Chaîne inversée de : $result2');



}