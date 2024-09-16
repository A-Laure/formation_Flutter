import 'dart:io';

class Stock {

String? name;
String _refProduct;

String get refProduct => _refProduct;

double qtyStock = 0;
double _stockTotal = 0;

double get stockTotal => _stockTotal; // j'autorise l'affichage

//set autorise la modif de la valeur


Stock (this.name,this._refProduct);

void enterStock (){ 
    
    print('Veuillez entrer un montant : ');
    qtyStock = double.parse(stdin.readLineSync()!);
    _stockTotal += qtyStock;
    print('Le nouveau stock est : $_stockTotal');
  }
}

void main(){

Stock newEntrie = new Stock('Stylo', '102565');
newEntrie.enterStock();
print('Vous avez ajouté : ${newEntrie.name}');
print('Vous avez : ${newEntrie.stockTotal} produits en stock');

}


