/*
1- Créer une classe BanKAccount avec un attribut 'balance' et des méthodes 'deposit' et 'withdraw' et 'showBalance'
2 - Faire fonctionner les méthodes afin de pourvoir déposer et retirer de l'argent et voir le compte
*/

import 'dart:io';

class BankAccount  { 

// les attributs
String name;
String nickName;
double balance = 0; // on lamet ici car utilisée dans 2 fonctions





 // constructeur appelé au moment de l'instanciation de la classe

 BankAccount (this.name,this.nickName); // par convention, pas d'obligation, on met une majuscule

 // Methodes (fonctions dans class)
  
  void deposit (){ 
    
    print('Veuillez entrer un montant en + : ');
    double money = double.parse(stdin.readLineSync()!);
    balance +=money;
  }

  void withDraw (){ 
 
    print('Veuillez entrer un montant en - : ');
    double money = double.parse(stdin.readLineSync()!);
    balance -= money;
  }

void displayBalance () {
    print('Votre solde est : $balance');
}
  

}

void main () {

BankAccount myAccount = new BankAccount('Guillon', 'ALaure');

print('Vous venez d\ouvrir un compte au nom de :  ${myAccount.name}');

// enterMoney = double.parse(stdin.realLineSync()!);
// exitMoney = double.parse(stdin).realLineSync()!;

myAccount.deposit();
myAccount.withDraw();
myAccount.displayBalance();
}