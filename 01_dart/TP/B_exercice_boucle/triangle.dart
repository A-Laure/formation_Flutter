import'dart:math';
 
void main() { 
List<dynamic> tableauComplet = [];
print(tableauComplet);

var aleatoire = new Random();
  for (var i=0; i<21; i++){
  tableauComplet.add(aleatoire.nextInt(20));
  print(aleatoire.nextInt(20));
  print(tableauComplet);

}
}
