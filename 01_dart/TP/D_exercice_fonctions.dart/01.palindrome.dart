

// Créer une fonction qui vérifie si une chaîne de caractères est un palindrome.

bool palindrome (String inputWord) 
{

// calcul de la length de inputWord

  int lengthInputWord = inputWord.length;

// comparaison de la lettre 1 de inputWord et de la dernière de inputword puis de la 2ème (soit 1ère +1) avec la 4ème (soit 5ème -1)

  for (int i = 0, j = lengthInputWord -1; i < lengthInputWord; i++, --j)
  {

   if (inputWord[i] != inputWord[j]) // si ex : 1ère lettre de inputWord est différente de dernière lettre de inputWOrd
   {
          print('$inputWord[$i] est différent de $inputWord[$j]'); 
          return false; // alors je sors de la boucle et je vais dans le main
      
   }

          print('$inputWord[$i] est = à $inputWord[$j]');
  }

      return true; // si mot est un palindrome il ne passe pas  par return false mais il lui faut obligatoirement un return pour sortir

}

void main()
{ 

  String inputWord = 'renougatre';

  print('$inputWord ${palindrome(inputWord/*=false*/) ? 'est' :'n\'est pas'} un palindrome' );

                                           

}









