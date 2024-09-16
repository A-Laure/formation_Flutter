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


///////////////////// 1 - MON STOCK /////////////////////////////////////////////////

void addArticle () // je crée une fonction pour ajouter des lignes d'articles dans le stock
{
  print('Entrez un nom d\'article : ');  
  String articleName = stdin.readLineSync()!;    // user input

  print('Entrez une quantité :');
  int articleQty = int.parse(stdin.readLineSync()!);  // user input

  print('Entrez un prix :');
  int articlePrice = int.parse(stdin.readLineSync()!);  // user input



    Map<String, dynamic> ligneArticle = // je crée ma Map
    {
      'Article' : articleName,
      'Quantité' : articleQty,
      'Prix' : articlePrice,
    };

      stock.add(ligneArticle); // j'ajoute ma/mes lignes de la MAP dans mon stock
      print('Vous avez ajouté au stock $ligneArticle');
        
}

///////////////////// 2 - SEE MON STOCK /////////////////////////////////////////////////

void seeStock () {// pourquoi on fait une fonction alors que l'on a déjà la MAP stock => pour meilleur affichage

  print('Mon stock total est :');

  for (Map<String, dynamic> stockTotal in stock)
  {
    print('Article : ${stockTotal['Article']} -  Quantité disponible : ${stockTotal['Quantité']} -  Prix TTC : ${stockTotal['Prix']} euros');
  }
}



Map<String, dynamic> ligneOrder = {

        // 'ArticleName' : articleChoice,
        // 'Quantité' : qtyChoice,
};

//////////////////////// 3 - MA COMMANDE /////////////Faut test sur le nom de l'article/////////////////////////////////////

void makeOrder () // je crée une fonction pour passer ma commande stock / choix et test article
{


          ///////// liste des produits en stock pour choix user en joli affichage ///////
    
print('Choisissez un article dans la liste suivante :');

         //////////// Map pour joli affichage, !!! ce n'est pas la liste stock//////////////////
          
for (Map<String, dynamic> stockTotal in stock) {

      print('Article : ${stockTotal['Article']} -  Quantité disponible : ${stockTotal['Quantité']} -  Prix TTC : ${stockTotal['Prix']} euros');
 }

             /// Saisie du user du choix de l'article 


             
 String articleChoice = ''; // je déclare ma variable String vide
 

                      ///// je fais le test si article existe dans le stock ///////////

int i =0;


while (articleChoice != stock[i]['Article']) {     
// tant que le choix de l'user n'est pas dans le stock

print('Je rentre dans mon while article'); 
print('Veuillez choisir un article disponible'); 
articleChoice = stdin.readLineSync()!; // le user choisi un article
articleChoice = articleChoice.toLowerCase(); // je le mets en minuscule car stock saisi en minuscule



  for (int i = 0; i < stock.length; i++) { // je parcours la list/Map Stock tant que articleChoice pas trouvé dans mon stock

    print('Je rentre dans mon for article'); 
    print('Je suis à l index $i');              
                  
    if (articleChoice == stock[i]['Article']){ //  je vise la key 'Article' à l'index [i]
       
             
      print('Je rentre dans mon if article ok');
      ligneOrder['Article'] = articleChoice;
      ligneOrder['Quantité'] = stock[i]['Quantité'];
      ligneOrder['Prix'] = stock[i]['Prix'];
      order.add(ligneOrder); // je l'ajoute dans ma liste/map ligneOrder  
      print('Vous venez de commander l\'article suivant : $articleChoice');
      print('On a récupéré la ligne de stock suivante : ${stock[i]}');
      qtyUser(stock[i]);
      //break;   // quitte la boucle si articleChoice == stock[i]['Article']
    } 
    else {

      print('Article pas disponible en stock');
           
    }
    
  }
}
  
}

                  ////////  3bis - Saisie du user de la qté de l'article //////////////////  

void qtyUser (Map<String, dynamic> articleChoice) { // je crée une fonction pour passer ma commande stock / choix et test qté

print('Choisissez une quantité disponible en stock:');
//int qtyChoice = 0; 
int qtyChoice = int.parse(stdin.readLineSync()!); // le user choisi sa quantité
// int j = 0;


    if (qtyChoice < 0 || qtyChoice > articleChoice['Quantité']) { // si qty <0 et > qté en stock
  
    print('Je rentre dans mon if qty');
    print('Choisissez une quantité disponible en stock:');
    qtyChoice = int.parse(stdin.readLineSync()!); // le user choisi à nouveau la quantité
    
    } else { // "pb" me l'imprime à chaque tour.....

        ligneOrder['Quantité'] =  qtyChoice; 
    
        // order.add(ligneOrder); fait doublon avec celui dans articleChoice
        print('Vous avez choisi $qtyChoice articles');
        majStock(articleChoice);
        //return; // rajouter fait sortir d'une fonction 
      }
        // }
     
    }    
/////////////////// Mon stock moins la qté commandée ///////////////////////////////

void majStock (Map<String, dynamic> articleChoice) {

print('Je rentre bien dans majStock');

    for(var majStock in stock){ // je balaye mes lignes de stock
      
      print('${majStock['Article']} - ${majStock['Quantité']} unités - Prix unitaire : ${majStock['Prix']} €' );
       
    // vérification de chaque ligne de order
        
         if(majStock['Article'] == articleChoice['Article']){ // attention, ici article choice est une map
          
           print('Je suis dans mon if majStock');   
           majStock['Quantité'] -= ligneOrder['Quantité'];
           //articleQty -= qtyChoice;
           //stock['Quantité'] -= qtyChoice;
         
          }
    }
}
  

///////////////////// 4 - MON PANIER  /////////////////////////////////////////////////

void seePanier (){

  for (Map<String, dynamic> monPanier in order) {
      
    print('Vous avez commandé : ${monPanier['Quantité']} ${monPanier['Article']}(s) au prix unitaire de : ${monPanier['Prix']} euros');
    break;
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
      totalFacture += articles['Quantité'] * articles['Prix']; // pour chaque item on multiplie la quantité par le prix unitaire et ajoute le resultat dans totalFacture
      print('Le total de ma facture est : $totalFacture euros');   // on retourne le total de la facture 
  }
 } 
    
void myMaps () {

print('Stock map $stock');
print('');
print('Order map $order');
print('');


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
        print('6 - Mes maps');
        print('7 - Je quitte le prog');

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
            myMaps();
          case '7' :
            return; // quitte la fonction
        }

    }

}
