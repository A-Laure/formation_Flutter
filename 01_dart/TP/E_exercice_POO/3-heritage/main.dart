import 'animal.dart'; // attention, l'ordre des imports est important
import 'oiseau.dart';

main() {

  Animal monAnimal = new Animal();
  monAnimal.seDeplacer();

  Oiseau monOiseau = new Oiseau();
  monOiseau.crier();
  monOiseau.seDeplacer();
}