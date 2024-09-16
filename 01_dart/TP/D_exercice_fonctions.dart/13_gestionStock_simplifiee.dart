/*
Vous devez développer un système de gestion de stock pour un magasin. Écrivez des
fonctions pour effectuer les opérations suivantes :
1. Ajouter un produit au stock avec son nom, prix unitaire et quantité.
2. Afficher le stock actuel.
3. Passer une commande en spécifiant le produit, la quantité désirée et le prix unitaire
convenu.
4. Afficher le coût total de la commande.
*/

import 'dart:io';

List<Map<String, dynamic>> stock = []; // je crée mon tableau de stock
List<Map<String, dynamic>> order = []; // je crée mon tableau de commande
List<Map<String, dynamic>> facture = []; // je crée ma facture

///////////////////// 1 - MON STOCK /////////////////////////////////////////////////

void addArticle () // je crée une fonction pour ajouter des lignes d'articles
{
  print('Entrez un nom d\'article : ');  
  String articleName = stdin.readLineSync()!;    // user input

  print('Entrez une quantité :');
  int articleQty = int.parse(stdin.readLineSync()!);  // user input

  print('Entrez un prix :');
  int articlePrice = int.parse(stdin.readLineSync()!);  // user input

  //stock.add({'Article' : articleName, 'Quantité' : articleQty, 'Prix' : articlePrice});
  // au lieu de ce qu'il y a dessous



    Map<String, dynamic> ligneArticle = // je crée ma Map
    {
      'Article' : articleName,
      'Quantité' : articleQty,
      'Prix' : articlePrice,
    };

      stock.add(ligneArticle); // j'ajoute ma/mes lignes de la MAP dans mon stock
      print('Vous avez ajouté au stock $ligneArticle');
    //  print(stock);
      
}



///////////////////// 2 - SEE MON STOCK /////////////////////////////////////////////////

void seeStock () // pourquoi on fait une fonction alors que l'on a déjà la MAP stock => pour meilleur affichage

{
  //print(stock);  1ere solution mais affichage pas beau

  print('Mon stock total est :');

  for (Map<String, dynamic> stockTotal in stock)
  {
    print('Article : ${stockTotal['Article']} -  Quantité disponible : ${stockTotal['Quantité']} -  Prix TTC : ${stockTotal['Prix']} euros');
  }
}





//////////////////////// 3 - MA COMMANDE /////////////Faut test sur le nom de l'article/////////////////////////////////////

void makeOrder () // je crée une fonction pour passer ma commande stock
{
Map<String, dynamic> ligneOrder = {

        // 'ArticleName' : articleChoice,
        // 'Quantité' : qtyChoice,
};

          ///////// liste des produits en stock pour choix user en joli affichage ///////
    
print('Choisissez un article dans la liste suivante :');

         //////////// Map pour joli affichage, !!! ce n'est pas la liste stock//////////////////
          
for (Map<String, dynamic> stockTotal in stock) {

      print('Article : ${stockTotal['Article']} -  Quantité disponible : ${stockTotal['Quantité']} -  Prix TTC : ${stockTotal['Prix']} euros');
 }

             /// Saisie du user du choix de l'article 


             
 String articleChoice = ''; // le user choisi un article
 /*articleChoice = articleChoice.toLowerCase(); // je le mets en minuscule car stock saisi en minuscule
 ligneOrder['ArticleName'] =  articleChoice ; 
 ligneOrder['Quantité'] =  articleChoice ;*/
 

                      ///// je fais le test si article existe dans le stock ///////////

int i =0;
bool isValid = true;

while (isValid == true) {

print('Je rentre dans mon while article'); 
print('Veuillez choisir un article disponible'); 
articleChoice = stdin.readLineSync()!; // le user choisi un article
articleChoice = articleChoice.toLowerCase(); // je le mets en minuscule car stock saisi en minuscule
ligneOrder['ArticleName'] =  articleChoice ; 



  //print('Choisissez un article :');
  //articleChoice = stdin.readLineSync()!; // le user choisi un article
  //articleChoice = articleChoice.toLowerCase(); // je le mets en minuscule car stock saisi en minuscule


  for (int i = 0; i < stock.length; i++) { // je parcours la list/Map Stock tant que articleChoice pas trouvé dans mon stock

    print('Je rentre dans mon for article'); 
    print('Je suis à l index $i');              
                  
    if (articleChoice == stock[i]['Article']){ //  je vise la key 'Article' à l'index [i]
       isValid = false; // il quitte le while
             
      print('Je rentre dans mon if article ok');
      ligneOrder['Price'] = stock[i]['Prix'];
      order.add(ligneOrder); // je l'ajoute dans ma liste/map ligneOrder  
      print('Vous venez de commander l\'article suivant : $articleChoice');
      break;   // quitte la boucle si articleChoice == stock[i]['Article']
    } 
    else {

      print('Article pas disponible en stock');
           
    }
    
  }
}

                  //////// Saisie du user de la qté de l'article //////////////////  


print('Choisissez une quantité :');
double qtyChoice = double.parse(stdin.readLineSync()!); // le user choisi sa quantité
ligneOrder['Quantité'] =  qtyChoice ;

    while(qtyChoice < 0 && qtyChoice > stock[i]['Quantité']) { // tant que qty <0 et > qté en stock

        print('Je rentre dans mon while qty');

        print('La qté $qtyChoice n\'est pas en stock :');
        print('Choisissez une qté valide :');
        qtyChoice = double.parse(stdin.readLineSync()!); // le user choisi à nouveau un articun article
         

        //i = -1; // avant cette "consigne", i+1 dc -1 pour revenir à 0 et là il retourne ds la boucle car le if et else st dans la boucle 
 

        for (int i = 0; i < stock.length; i++) { // je parcours la list/Map Stock tant que qtyChoice pas non conforme stock

        print('Je rentre dans mon for qty');    
           

            if (qtyChoice > 0 && qtyChoice <= stock[i]['Quantité']){ //  je vise la key 'quantité' à l'index [i]
        
                print('Je rentre dans mon if qté ok');
                order.add(ligneOrder); // je l'ajoute dans ma liste/map ligneOrder  
                //stock[i]['Quantité'] -=  qtyChoice; // faire - la qté pour MAJstock faut que je récupère lunette
                print('Vous venez de commander qtyChoice de $articleChoice (s): ');
                break;   // quitte la boucle si articleQty == stock[i]['Quantité']
            } 
            else {

                print('Article pas disponible en stock');
                return; // rajouter fait sortir d'une fonction --- A TESTER

            }
        }
    }    
    print(ligneOrder);
    //print(stock);


}


///////////////////// 4 - MON PANIER  /////////////////////////////////////////////////

void seePanier (){

   // print('Votre panier est : $order');

  for (Map<String, dynamic> cmdeTotale in order) {
      
    print('Vous avez commandé : ${cmdeTotale['Article']} pour une quantité de : ${cmdeTotale['Quantité']} au PU TTC : ${cmdeTotale['Prix']} euros');
  }
}


//////////////  5 - Fonction pour afficher tous les articles de la facture //////////////////


// 
void maFacture(){

  print('Articles facturés :');
  double totalFacture = 0; // je crée ma variable total facture

  // on parcourt la list facture et on affiche a chaque tour les infos de l'article parcouru 
    for(var articles in order){
      print('${articles['Article']} - ${articles['Quantité']} unités - Prix unitaire : ${articles['Prix']} €' );
      // pour chaque item on multiplit la quantité par le prix unitaire et ajoute le resultat a totalAmount
      totalFacture += articles['quantite'] * articles['prixUnitaire'];
       // on retourne le total de la facture 
    //return totalFacture;
    }
   
    }
    


void main () 
{
while(true)
    {

        String userInput = '';

        print('Choisissez une action');
        print('1 - Ajoutez un article en stock'); 
        print('2 - Visualisez le stock');
        print('3 - Passer une commande');
        print('4 - Mon panier');
        print('5 - Ma facture');
        print('6 - Je quitte le prog');

        userInput = stdin.readLineSync()!;



        switch(userInput)
        {
          case '1' :
            addArticle();
          case '2' :
            seeStock();
          case '3' :
            makeOrder();
          case '4' :
            seePanier();
          case '5' :
            maFacture();
          case '6' :
            return; // quitte la fonction
        }

    }

}
