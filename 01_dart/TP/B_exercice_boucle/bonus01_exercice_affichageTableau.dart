

void main() {  

/* Exercices bonus 1
Écrire un programme qui affiche le contenu du tableau.*/

print('Tableau Initial');

var vehicules = {
'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero'],
'Camions': ['Renault truck', 'Mercedes-Benz Unimog']
};



print('Question 1 :');

vehicules.forEach((type, marque) {  
    print('$type :');
    marque.forEach((marque) {
      print('  - $marque');
    });
    });


// Écrire un programme qui affiche le contenu du tableau.

print('Question 2 :');
print('Tableau Initial');

var vehicules2 = {
'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero'],
'Camions': ['Renault truck', 'Mercedes-Benz Unimog']
};

print(vehicules2);



vehicules2.forEach(typeCars)  // liste vehicule type et cars
{
    typeCars.forEach((type, marque)  
     { 
        print('$type :');
        marque.forEach((marque) 
          { 
              print(' - $marque');
          });
     });
};


// Solution Damien

/* Exercices bonus 1
Écrire un programme qui affiche le contenu du tableau.
var vehicules3 = [
{'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero']},
{'camions': ['Renault truck', 'Mercedes-Benz Unimog']}
];
*/

var vehicules3 = {
'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero'],
'Camions': ['Renault truck', 'Mercedes-Benz Unimog']
};

for (var categorie in vehicules3.keys) { // on stocke chaque clé ds categorie à chaque tour

  print('$categorie'); 
  print (vehicules3[categorie]);
  for(var modele in vehicules3[categorie]!) { // pour chaque element de ma liste voiture, je stocke dans modèle
    print('- $modele'); //1er print ... 2ème print...3ème tour... fin boucle, retourne à la 1ère boucle
  }
}

// Sol Damien 2


  // 1

  // var vehicules = {

  //   'voitures': [
  //     'C3 aircross',
  //     'Passat',
  //     'Dacia Sandero'
  //   ],

  //   'Camions': ['Renault truck', 'Mercedes-Benz Unimog']

  // };

  // for(var categorie in vehicules.keys){

  //   print('$categorie :');
  //   // print(vehicules[categorie]);
  //   for(var modele in vehicules[categorie]! ){
  //     print(' - $modele');
  //   }

  // }

  // vehicules.forEach((key, value) {
  //   print('${key} : ');
  //   for (var vehicule in value) {
  //     print('- $vehicule');
  //   }
  //   print('');

  // });


  // 2
  var vehicules5 = [
    {
      'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero']
    },
    {
      'camions': ['Renault truck', 'Mercedes-Benz Unimog']
    }
  ];


  for(var categorie in vehicules5){
    // print(categorie.entries);
    for(var vehicule in categorie.entries){
      print('${vehicule.key} : ');
      for(var modele in vehicule.value){
        print('- $modele');
      }
    }
  }

  // for(var i = 0; i < vehicules.length; i++){

  //   // print(vehicules[i]);
   
  //   vehicules[i].forEach((key, value) { 
  //     print('$key :');
  //     for(var modele in value){
  //       print('- $modele');
  //     }
  //   });

  // }  

}









