
// quand on décale (mise en page = INDENTATION)
// penser aux exceptions qui ne "devraient pas exister" dans un programme
// switch ou else...if, else...if qd on a bcp de else if (plus de 3) on fait un switch

void main() {

// une condition, une execution. 

double moyenne = 12.3;

if (moyenne >= 10) {
  print('Vous avez la moyenne');
}

print('Ca continue');


 
// if.... ELSE (Si.....SInon) / sert par ex si connecté sur page...

if (moyenne >= 10) {
  print ('Vous n avez pas la moyenne');
} else { 
  print('Vous n a vez pas la moyenne');
}

  print('Ca continu');
      


// If .... ELSE....if

int nombre = 17;

if(nombre % 2 == 0) {
  print('$nombre est pair');               
}
else {
  print('$nombre est impair');
}

// Imbrication  IF... ELSE IF....ELSE / on peut faire autant que l'on veut de Else if

// ET  (condition 1) et (condition 2) - si les 2 sont vérifiées = true
// true && true = true
// false && true = false
// false && false - false

// ou (le pipe) = faut au moins une des 2 conditions vérifiées
// true || true = true
// false || true = true
// true || false = true
// false || false = false

 double moyenne2 = 14.2;

 if (moyenne2 >= 10 && moyenne < 12){

    if(moyenne2 == 10) {
      print('Vous avez la moyenne');
    } else {
      print('passable');
    }
      print('Faire des efforts');
   } else if(moyenne2 > 10 && moyenne2 < 14) {
      print('Assez bien');
   }

// TERNAIRE reprend exemple du modulo mais en 1 ligne seulement
// On peut imbriquer des ternaires dans des ternaires mais plutôt utilser une ternaire uniquement
// condition ? si vrai : si faux
// ? - if   : = else

int nombre2 = 8;

String result = (nombre2 % 2)  == 0 ? '$nombre2 est pair' : '$nombre2 est impair';

  print(result);


// SWITCH (= selon) qd plus de 3 cas
// on peut écrire case 'admin' || 'administrateur';
// on peut mettre un lien url, une image etc... (à la place du print)


String role = 'admin';

switch(role) {
  case 'admin' :
    print('Vous êtes administrateur');
    break;
  case 'editor' :
    print ('Vous êtes éditeur');
    break;
  default:
    print('Vous êtes un simple utilisateur');
}


   }