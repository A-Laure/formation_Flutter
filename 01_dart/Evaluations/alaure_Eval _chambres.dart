/*
Système de réservation de chambres d'Hôtel

Brief : Vous êtes chargé de créer un programme pour gérer les réservations de chambres
dans un hôtel. L'hôtel dispose d'un nombre limité de chambres, et chaque chambre est
identifiée par un numéro. Les clients peuvent réserver une chambre pour une ou plusieurs
nuits, et une chambre ne peut être réservée que si elle est disponible.

1. Initialisation des chambres de l'Hôtel :
○ Développez une fonction initialiserChambres qui crée un certain
nombre de chambres avec un statut "disponible" ou "réservé".
*/


import 'dart:io';
import 'dart:math';


List<String> status = ['Réservé', 'Disponible'];
String chbreStatus = '';
String statusBooking =''; // on crée variable pour récupérer le statut de la chambre
int nigthsNumber = 0; // on crée variable pour récupérer le nombre de nuits
String resaName = '';

List<Map<String, dynamic>> listeChambres = [ 
  { 'Nom' : 'Bel Air',
  'Num' : '1',
  'Statut' : chbreStatus,
  'RésaName' : resaName,
  'Nombre de nuits' : 0,
  },
  { 'Nom' : 'San Francisco',
  'Num' : '2',
  'Statut' : chbreStatus,
  'RésaName' : resaName,
  'Nombre de nuits' : 0,
  },
  { 'Nom' : 'Los Angeles',
  'Num' : '3',
  'Statut' : chbreStatus,
  'RésaName' : resaName,
  'Nombre de nuits' : 0,
  },
   { 'Nom' : 'New York',
  'Num' : '4',
  'Statut' : chbreStatus,
  'RésaName' : resaName,
  'Nombre de nuits' : 0,
  },
];


void initializeChambers () {

for(int i =0; i<listeChambres.length; i++) { // pour toutes les lignes de la map

Random random = Random();

String captationStatus = status[random.nextInt(status.length)];

//print(captationStatus);

listeChambres[i]['Statut'] = (captationStatus); // ajout dans chaque statut
}

print('Voici la liste des chambres : ');
print('');

for (Map<String, dynamic> planning in listeChambres)
  {
         print('Chambre : ${planning['Nom']} -  Numéro : ${planning['Num']} -  Statut : ${planning['Statut']} - Nom Client : ${planning['RésaName']}  - Nombre de nuits :  ${planning['Nombre de nuits']}');
        // faire essai avec juste print(listeChambres);
  }; 
}         

/*2. Fonction pour réserver une chambre :
○ Créez une fonction reserverChambre qui permet de réserver une chambre
disponible pour une certaine période. La fonction doit vérifier la disponibilité
de la chambre avant de confirmer la réservation.*/


/// Test des chambres disponibles /////

void testStatuts () {  // ne se met pas à jour au fil des réservations

for (int i =0; i < listeChambres.length; i++) { // pour chaque ligne de la listeChambre
//print('Je suis à l index $i');
 
   if(listeChambres[i]['Statut'] == 'Réservé') { 
   
    print('Chambre ${listeChambres[i]['Num']} non dispo');

   } else {
            print('Chambre ${listeChambres[i]['Num']} disponible');
}
}
}

void roomBooking () {

////////////////////// Joli affichage de ma liste ////////////////////////////////

for (Map<String, dynamic> planning in listeChambres)
{
    print('Chambre Numéro : ${planning['Num']} -  Statut : ${planning['Statut']} ');
}; 
print('');
print('Veuillez choisir un numéro de chambre');
String userBooking = (stdin.readLineSync()!); // saisie et récup de l'userInput
print('Combien de nuits?');
nigthsNumber = int.parse(stdin.readLineSync()!);
print('Entrez un nom de réservation');
resaName = stdin.readLineSync()!;   
resaName = resaName.toLowerCase();
print('');  

for (int i =0; i < listeChambres.length; i++) { // pour chaque ligne de la listeChambre
//print('Je suis à l index $i');
 
   if(userBooking == listeChambres[i]['Num']) { // je compare la saisie de l'user au num de la chbre et qd = 
    // print('je rentre ds mon if');
    //print(listeChambres[i]['Statut']); 
    
    statusBooking = (listeChambres[i]['Statut']); // je mets dans ma variable le statut trouvé pour ensuite.. on fera un if dessus (dans une autre fcontion)
    listeChambres [i]['Nombre de nuits'] = nigthsNumber;  // je mets dans ma map le nombre de nuits
    listeChambres [i]['RésaName'] = resaName;
    print('Nous vous enverrons une confirmation.');
    
    print('');
   
       if(statusBooking == 'Disponible') {

        listeChambres[i]['Statut'] = 'réservé';
        print('La chambre est bien disponible, vos nuits sont bien réservées.');
        print('');
        print(listeChambres[i]);  
        print('');
    
    
        } else {
            print('La chambre n\' est pas disponible');
            print('');
            roomBooking();  // si pas dispo, je retourne à ma fonction booking
          }
} 
}
}  


/*3. Fonction pour annuler une réservation :
○ Écrivez une fonction annulerReservation qui change le statut d'une
chambre réservée en "disponible".*/

void  bookingCancel () {   // test sur nom car pas de vérif sur le num


print('Saisissez le NOM lors de la réservation de la chambre :');
String cancelRoom = (stdin.readLineSync()!);
cancelRoom = cancelRoom.toLowerCase();

                                                              
for (int i = 0; i < listeChambres.length; i++){

  if (cancelRoom != listeChambres[i]['RésaName'] ) {
      print('$cancelRoom n\existe pas, veuillez recommencer.');
      
    
  } else{
    listeChambres[i]['Statut'] = 'Disponible';
    listeChambres[i]['Nombre de nuits'] = 0;
    listeChambres[i]['RésaName'] = '';
    print('La chambre a bien été annulée');
    print('Le statut de la chambre a bien été modifié :${listeChambres[i]}.');
    print('');
    return;
  }
}
}

/*4. Fonction pour afficher l'état des chambres :
○ Implémentez une fonction afficherEtatChambres qui affiche le statut de
toutes les chambres de l'hôtel.*/

void displayRoom () {

 for (Map<String, dynamic> planning in listeChambres)
  {
     print('Chambre Numéro : ${planning['Num']} -  Statut : ${planning['Statut']} ');
  }; 
}


void main() {

/*
● Utilisez une liste pour stocker les informations sur les chambres.
● Chaque chambre peut être représentée par une map contenant son numéro et son
statut.
● Assurez-vous que les fonctions gèrent correctement les cas où une chambre n'est
pas disponible.
● Affichage d’un menu afin de pouvoir sélectionner l’action que l’on veut effectuer
*/

initializeChambers ();// 1ère action faite par le programme


while(true)
    {

        String userInput = '';
        print('');
        print('Choisissez une action');
        print('');
        print('1 - Chbre dispo?'); 
        print('2 - RoomBooking'); 
        print('3 - CancelBooking');
        print('4 - displayRoom');
        print('5 - Je quitte le prog');
        print('');
        userInput = stdin.readLineSync()!;



        switch(userInput)
        {
          case '1' :
            testStatuts();
          case '2' :
            roomBooking();
          case '3' :
            bookingCancel();
          case '4' :
            displayRoom();
          case '5' :
            return; // quitte le prog
        }

    }

}
