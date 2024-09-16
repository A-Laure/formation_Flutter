import 'animal.dart';

class Oiseau extends Animal { //extend = 'oiseau est un animal = "c'est un"
// pour voir Animal, faire clic droit sur animal et go to definition, vrai partout pour les autres "mots"

  
void crier() 
   {
    print('L oiseau crie.');
   }

@override //@ -> un décorateur ou annotation-> pour indiquer que nous modifions le comportement d’une méthode-> plus optimisé que d'en créer une autre
void seDeplacer() // comme si on écrasait la méthode seDeplacer importée de Animal
   {
    print('L oiseau se déplace.');
   }

  }
