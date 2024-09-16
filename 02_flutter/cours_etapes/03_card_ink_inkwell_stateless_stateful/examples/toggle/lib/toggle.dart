// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {

 bool bravo = false; // généralement pas activé (false)  par défaut
 int counter = 1;
 String compteur = '';
 
 // EXTERNALISATION DU SETSTATE EN METHODE, CE QUI SE PASSE QD ON APPUIE SUR BOUTON

  void _toggle(){ 
      setState(() { // chge l'état de la variable, met à jour le widget
          bravo = !bravo; 
          counter +=1;
          compteur = counter.toString();
        
          
          


          if(counter <= 30) {
               print(counter); // print dans la console
               compteur = counter.toString();
               counter +=1;
               
          } else {
            counter=0;
            compteur = counter.toString();
            return;   
            }  
          
         }
       );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 400),
      child: Column(
        children: [

  

          FilledButton( 
            onPressed: _toggle,// on appelle la méthode SETSTATE

             /*
              setState(() { // chge l'état de la variable, met à jour le widget
                 bravo = !bravo; // le "!" met la valeur inverse, si true, met false
              });
              */

           style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(bravo ? Colors.amber : Colors.blue),),
            child: Text(bravo? 'Bravo, vous avez clické' : 'Pas bravo', style: TextStyle(color:Colors.white)),// couleur change les 2 textes et non un
          ),
                   Text('Le bouton est ${bravo? 'activé' : 'désactivé'}', style: TextStyle(fontSize: 20, color: Colors.white),),
                   // autre façon d'écrire, plus rapide
                    Text('$compteur', style: TextStyle(fontSize: 50, color: Colors.blue),),
  


                   
        ],
      ),
    );
  }
}