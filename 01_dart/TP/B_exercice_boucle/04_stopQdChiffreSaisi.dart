import 'dart:io';

void main() {

/*Exercice 4
Écrire un programme qui demande à l'utilisateur de saisir une note une par une jusqu'à saisir -1
pour terminer la saisie. Chaque note est stockée dans un tableau notes, et on affichera a la fin
les notes saisies. */


                                                  
List<double> allMarks = []; 


double marks = 0;

while(marks != -1) {
    print('Taper une note ou -1 si fini :');
    marks = double.parse(stdin.readLineSync()!); // si je mets double devant mareks je redéclare la variable qui est déjà déclaré au dessus dc pas bon
    print(marks);

    if (marks != -1 && marks <= 20 && marks >= 0) { 
    allMarks.add(marks); 
} 

}

print('Vous avez saisi les notes suivantes : $allMarks');
print('');
  



         
// pour vérifier si ma saisie est un chiffre => convert string en double
print('Cas avec string');
print('');
List<double> allMarks2 = []; 
String saisie = '';
double marks2 = 0;

while (saisie != 'stop') {

  print('Veuillez saisir un chiffre puis stop quand terminé:');
  saisie = stdin.readLineSync()!;
  
  if(double.tryParse(saisie) != null) {
  marks2 = double.parse(saisie); // si je mets double devant marks je redéclare la variable qui est déjà déclaré au dessus dc pas bon
  print(marks2);

    if (marks2 != -1 && marks2 <= 20 && marks2 >= 0) { 
    allMarks2.add(marks2); 
} 
}



}
print('Vous avez saisi les notes suivantes : $allMarks2');
         
 }        


