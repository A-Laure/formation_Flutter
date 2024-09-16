void main() {
  
// Écrire un programme qui affiche "Dart est FUN." 10 fois avec tous les types de boucles.


var sentence = StringBuffer('Print 10 fois :  '); // je peux ne rien mettre dans ()
for (var i = 0; i < 10; i++) {
  sentence.write('Dart est fun   ');
}
print(sentence);


}