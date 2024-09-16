// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {


 int compteur = 0;
 double price = 10.23;

 
 // EXTERNALISATION DU SETSTATE EN METHODE, CE QUI SE PASSE QD ON APPUIE SUR BOUTON

  void incrementer(){ 
      setState(() { // chge l'état de la variable, met à jour le widget
        compteur ++;
      }
       );
  } 
          
  void decrementer(){ 
      setState(() { // chge l'état de la variable, met à jour le widget
        compteur --;
      }
       );
  } 
      

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 400),
      child: Column(
      
        children: [
          Text('${(price * compteur).toStringAsFixed(2)}', style: TextStyle(fontSize:30),),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                ElevatedButton(onPressed: decrementer, child: Text('-')),
                Text('$compteur'),
                ElevatedButton(onPressed: incrementer, child: Text('+')),
                
                 ],
            ),     
        ],
      ),
    );
  }
}