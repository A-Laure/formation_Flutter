import 'dart:io';

void main() {

/*Exercice 4 bis
Écrire un programme qui demande à l'utilisateur de saisir une note une par une jusqu'à saisir -1
pour terminer la saisie. Puis qui fait la somme des notes saisie et calcule la moyenne.
Attention vous aurez besoin de savoir le nombre d'éléments qu'il y a dans le tableau de notes (
on l'a déjà vu si vous avez oublié regardez dans la doc de dart). */

// Solution 1 : moi

print('Solution moi');
print('');
List<int> allMarks = []; 


var marks = 0;

while(marks != -1) {
    print('Taper une note ou -1 si fini :');
    marks = int.parse(stdin.readLineSync()!); // avec le int je redéclare déclare la variable dc pas bon, sans, je change ma variable

    if (marks != -1) { 
    allMarks.add(marks); 
} 
}
        
print('Vous avez saisi les notes suivantes : $allMarks');
  
// Somme des notes saisies

var sum = allMarks.fold(0, (a, b) => a + b);

print('La somme de vos notes est : $sum');

// Moyenne de vos notes

var nombreNotes = allMarks.length; 

print('Vous avez saisi $nombreNotes notes');

var moyenneNotes = (sum / nombreNotes);

print('La moyenne de vos notes est : $moyenneNotes');


// Solution 2 : Damien (stop avec un int et stop avec une string)

print('Solution Damien');
print('');

print('Stop avec -1');
print(''); 

  List<double> notes = [];

    double note = 0;  
  
    while(note != -1){


print('veuillez saisir une note : ');
 note = double.parse(stdin.readLineSync()!);

//si note est different de -1 ET si note est superieur ou egale a 0 ET si note est inferieur ou egale a 20 
  if(note != -1 && note >= 0 &&  note <= 20){
  // alors j'ajoute la note dans la liste notes
  notes.add(note);
  }    
 }

notes.removeLast();

print('Stop avec une string');
print(''); 

 List<double> notes2 = [];

  String saisie = '';
  double note2 = 0;
  double somme = 0;

  while(saisie != 'stop'){


    print('veuillez saisir une note : ');
    saisie = stdin.readLineSync()!;

    if(double.tryParse(saisie) != null){
      note2 = double.parse(saisie);
      // si note est different de -1 ET si note est superieur ou egale a 0 ET si note est inferieur ou egale a 20 
      if(note2 != -1 && note2 >= 0 &&  note2 <= 20){
        // alors j'ajoute la note dans la liste notes
        notes2.add(note2);
        // somme = somme + note;
        somme += note2;
      } 
    }
       
  }

  double moyenne = somme / notes.length;

 
  print(notes2);
  print(somme);
  print(moyenne);



}


