// on veut juste le return pour fvoir si majeur ou non
// ici on ne voulait pas un print de son âge mais faire un calcul et une condition
// on pourra se servir plusieurs fois de cette class dans le script car on a l'âge et le fait "majeur"

// nom, age, race, bruitage

class Animals  { // ? = null safety et le ! = non null

// les attributs :
String nom;
int age;
String race;
String bruitage;

 // constructeur appelé au moment de l'instanciation de la classe

 Animals (this.nom,this.age, this.race, this.bruitage );

 // Methodes (fonctions dans class)
  
  void court (){
    print('Le $race court très vite');
  }

  void bruit (){
    print('Le bruitage de $nom est $bruitage');
  }

}

void main () {

Animals maMontbeliarde = new Animals('Noireaude', 12, 'Montbéliarde', 'Meuuh');

print('La race de ma vache est ${maMontbeliarde.race}');

maMontbeliarde.bruit();
maMontbeliarde.court();
}