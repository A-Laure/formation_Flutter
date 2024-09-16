/*
Imaginez un système de gestion de factures pour une entreprise. Écrivez des fonctions pour
effectuer les opérations suivantes :
1. Ajouter un article à une facture avec son nom, quantité et prix unitaire.
2. Afficher les articles actuellement sur la facture.
3. Calculer le montant total de la facture.
*/
import 'dart:io';

List<Map<String, dynamic>> facture = []; // je crée mon tableau

void addArticle () // je crée une fonction pour ajouter des lignes d'articles
{
  print('Entrez un nom d\'article : ');  
  String articleName = stdin.readLineSync()!;    // user input

  print('Entrez une quantité :');
  double articleQty = double.parse(stdin.readLineSync()!);  // user input

  print('Entrez un prix :');
  double articlePrice = double.parse(stdin.readLineSync()!);  // user input

    Map<String, dynamic> ligneArticle = // je crée ma Map
    {
      'Article' : articleName,
      'Quantité' : articleQty,
      'Prix' : articlePrice,
    };

      facture.add(ligneArticle); // j'ajoute ma/mes lignes de la MAP dans ma facture

    print('Vous avez ajouté à la facture $ligneArticle');

    double montantTTC = articleQty * articlePrice; // je crée la variable pour calculer le montant de la facture

    print('$facture pour un montant de $montantTTC euros'); 

}
void main () 
{

  void recapFacture = addArticle(); 

  

}

