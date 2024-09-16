
// Créer une fonction qui vérifie si une chaîne de caractères est un palindrome.

bool isPalindrome(String word)
{
  word = word.toLowerCase(); // d'abord tt en minucule
  String invertedWord = word.split('').reversed.join(''); // slip coupe caractère par caractère, on inverse les caractères puis on les join ensemble

    return  word == invertedWord; // si vrai c'est un palindrome car bool isPalindrome vrai dc retourne true

}

void main()
{

String exemple1 = 'kayak';
String exemple2 = 'voiture';

print('$exemple1 est une palindrome : ${isPalindrome(exemple1)} '); // renvoie true
print('$exemple2 est une palindrome : ${isPalindrome(exemple2)} '); // renvoi false


if(isPalindrome(exemple1))
{
  print('$exemple1 est un palidrome');

} else 
        {
          print('exemple1 n est pas un palindrome');
        };
// ou 

print('$exemple1 ${isPalindrome(exemple1) ? 'est un palindrome' : 'n est pas un palindrome'}');

}