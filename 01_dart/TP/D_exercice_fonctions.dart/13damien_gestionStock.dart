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

List<Map<String, dynamic>> stock = [];
List<Map<String, dynamic>> orderList = [];

// void addProductToStock(String productName, double priceUnit, int quantity){
//   stock.add({'nom': productName, 'prixUnitaire': priceUnit, 'quantite': quantity});
// }

void addProductToStock(){

  String productName = stdin.readLineSync()!;
  double priceUnit = double.parse(stdin.readLineSync()!);
  int quantity = int.parse(stdin.readLineSync()!);

  stock.add({'nom': productName, 'prixUnitaire': priceUnit, 'quantite': quantity});

}


void displayStock(){
  print('Items actuels sur la facture');
  // on parcourt la list stock et on affiche a chaque tour les infos de l'item parcouru 
    for(var item in stock){
      print('${item['nom']} - ${item['quantite']} unités - Prix unitaire : ${item['prixUnitaire']} €' );
    }
}

void order(){



}

void main() {
  
  /*
    Vous devez développer un système de gestion de stock pour un magasin. Écrivez des
    fonctions pour effectuer les opérations suivantes :
      1. Ajouter un produit au stock avec son nom, prix unitaire et quantité.
      2. Afficher le stock actuel.
      3. Passer une commande en spécifiant le produit, la quantité désirée et le prix unitaire
      convenu.
      4. Afficher le coût total de la commande.
  */
    // String productName = stdin.readLineSync()!;
    // double priceUnit = double.parse(stdin.readLineSync()!);
    // int quantity = int.parse(stdin.readLineSync()!);
    // addProductToStock(productName, priceUnit, quantity);
    addProductToStock();
    print(stock);

  

  


}
