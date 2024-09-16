/*
Imaginez un système de gestion de factures pour une entreprise. Écrivez des fonctions pour
effectuer les opérations suivantes :
1. Ajouter un article à une facture avec son nom, quantité et prix unitaire.
2. Afficher les articles actuellement sur la facture.
3. Calculer le montant total de la facture.
*/


// [1] Fonction ajout item dans la liste invoice sans return mais en passant en parametre la variable invoice
void addItemToInvoice(String itemName, int itemQuantity, double itemUnitPrice, List<Map<String, dynamic>> invoice ){
  invoice.add({'nom' : itemName, 'quantite' : itemQuantity, 'prixUnitaire' : itemUnitPrice});
}

// [2] Fonction ajout item dans la liste invoice avec return mais en faisant le .add dans le main
// Map<String, dynamic> addItemToInvoice(String itemName, int itemQuantity, double itemUnitPrice){
//   return {'nom' : itemName, 'quantite' : itemQuantity, 'prixUnitaire' : itemUnitPrice};
// }

// Fonction pour afficher tous les items de invoice
void displayInvoice(List<Map<String, dynamic>> invoice){
  print('Items actuels sur la facture');
  // on parcourt la list invoice et on affiche a chaque tour les infos de l'item parcouru 
    for(var item in invoice){
      print('${item['nom']} - ${item['quantite']} unités - Prix unitaire : ${item['prixUnitaire']} €' );
    }
}

// Fonction qui calcule le montant total de la facture
double invoiceTotal(List<Map<String, dynamic>> invoice){
  // on declare une variable totalAmount
  double totalAmount = 0;
  // on parcourt chaque item de invoice
    for(var item in invoice){
      // pour chaque item on multiplie la quantité par le prix unitaire et ajoute le resultat a totalAmount
      totalAmount += item['quantite'] * item['prixUnitaire'];
    }
    // on retourne totalAmount qui correspond a l'addition du cout de tous les items
    return totalAmount;
}


void main() {
  
 /*
    Imaginez un système de gestion de factures pour une entreprise. Écrivez des fonctions pour
    effectuer les opérations suivantes :
      1. Ajouter un article à une facture avec son nom, quantité et prix unitaire.
      2. Afficher les articles actuellement sur la facture.
      3. Calculer le montant total de la facture
 */

  // 1) etape 1 sans la fonction
    List<Map<String, dynamic>> invoice = [];
    // invoice.add({'nom' : 'carotte', 'quantite' : 2, 'prixUnitaire' : 1.5});
    // invoice.add({'nom' : 'pomme', 'quantite' : 4, 'prixUnitaire' : 2});

    // methode avec saisie utilisateur
    // print('Veuillez saisir le nom de votre item :');
    // String itemName = stdin.readLineSync()!;
    // print('Veuillez saisir la quantite de votre item :');
    // int itemQuantity = int.parse(stdin.readLineSync()!);
    // print('Veuillez saisir le prix unitaire de votre item :');
    // double itemUnitPrice = double.parse(stdin.readLineSync()!);
    // invoice.add({'nom' : itemName, 'quantite' : itemQuantity, 'prixUnitaire' : itemUnitPrice});


    // 1) etape 2 avec fonction 
    //[1]
    addItemToInvoice('carotte', 2, 1.5, invoice);
    addItemToInvoice('pomme', 4, 2, invoice);
    //[2]
    // invoice.add(addItemToInvoice('carotte', 2, 1.5));
    
    // 2) etape 1 sans fonction 
    // print('Items actuels sur la facture');
    // for(var item in invoice){
    //   print('${item['nom']} - ${item['quantite']} unités - Prix unitaire : ${item['prixUnitaire']} €' );
    // }
    
    // 2) etape 2 ave fonction
    displayInvoice(invoice);


    // 3) etape 1 sans fonction 
    // double totalAmount = 0;
    // for(var item in invoice){
    //   totalAmount += item['quantite'] * item['prixUnitaire'];
    // }
    // print('Le prix total de la facture est de $totalAmount €');

    // 3) etape 2 avec la fonction
    double totalAmount = invoiceTotal(invoice);    
    print('Le prix total de la facture est de $totalAmount €');
}