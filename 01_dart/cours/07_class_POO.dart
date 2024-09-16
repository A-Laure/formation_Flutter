// Programmation orientée objets

/*
- classe : prototype/modèle à partir duquel on va créer des objets
- Objet : une instance de classe
- héritage : une classe hérite des propriétes d'une autre classe -> de - en - utilisé
- encapsulation : sécuriser/restreindre l'accés aux données de l'objet
- getter pour prendre info / récupérer une valeur
- setter : pour modifier, initialiser une info
- polymorphisme : qd on a une méthode commune à plusieurs objets
                  ex : démarrer est une méthode mais on peut démarrer de différentes façons
- abstract :    on interdit l'instanciation sur la classe, juste une classe pour réunir des données communes à d'autres classes
                généralement la classe mère
                on inter agi avec l'objet mais on en connaît pas le détail du fonctionnement
                ex : voiture, on  inter agi avec volant sans savoir ce qui se passe derrière pour que ça tourne

Pquoi POO : permet que le code soit modulable, facile à maintenir et à mettre à jour
            réutilisable
            simplifie le code

par convention on met une majuscule au nom de la classe

-> constructeur se lance au moment où l'on crée un objet (par une variable dans le main (avec new))
    - il enregistre la marque dans la marque
    - il enregistre le modèle dans le modèle

Voiture maMarbella = new Voiture('Seat', 'Marbella); -> le fait de mettre voiture, il type "ma variable est un objet, ici voiture")
    var, le prog devine tt seul dc moins optimal     -> new pas obligatoire mais mieux





*/




class Voiture { // par convention, pas d'obligation, on met une majuscule

  // les attributs
  // le null safety n'est pas obligatoire mais protège de valeur nulle
  String? marque;
  String? modele;


  // constructeur appelé au moment de l'instanciation de la classe
  // Voiture(String marque, String modele ){
  //   this.marque = marque;
  //   this.modele = modele;
  // }
  Voiture(this.marque, this.modele);



 
  void demarrer(){
    print('Vroum Vroum le $modele');
  }

  void arreter(){
    print('prubefirvfg');
  }


}


void main() {
  
  var monRav4 = new Voiture('Toyota', 'Rav4');
  var monRS3 = new Voiture('Audi', 'RS3');
  Voiture maMarbella = new Voiture('Seat', 'Marbella');  // Methodes (fonctions dans class)
  
  print(monRav4.marque);
  print('La marque de la voiture est ${monRS3.marque} et le modele est ${monRS3.modele} ');
  // print(monRS3.modele);

  monRav4.demarrer();
  monRS3.demarrer();

}









