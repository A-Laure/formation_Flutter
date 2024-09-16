import 'package:flutter/material.dart';

void main() {
  runApp(MyTrip());
  }

class MyTrip extends StatelessWidget { // pas dépendant de donné
 
    @override
    Widget build(BuildContext context) { // nous permet de construire, on va l'instancier

      return MaterialApp(
         debugShowCheckedModeBanner: false,

        home:  Scaffold(

          appBar: AppBar(
            
             leading: Icon(Icons.home),
             title: Text('Choose My Trip', style: TextStyle(fontWeight: FontWeight.bold),),
             centerTitle: true, // pour Android, mac par défaut centre
             actions : [Icon(Icons.more_vert)],
            ),

        body: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0), // entre la appBar et la 1ère card
            color: Colors.blue,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [ 
                    Card( // ici card dans un container pour apprentissage mais, "en gros", card est un container stylisé
                  surfaceTintColor:const  Color.fromRGBO(255, 255, 255, 1),
                  elevation: 2,
                 
                    child: Container(
                      padding: const EdgeInsets.all(5), // espace blanc autour photo
                    height: 150,
                    child: Stack(
                      fit: StackFit.expand,
            
                      children: [
                        
                        Image.asset('assets/images/paris.jpeg', fit: BoxFit.fitWidth),
                        Container( 
                          padding: const EdgeInsets.all(10), // positionne 'Ville' et 'Etoile'
                          child: 
                          const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          //verticalDirection: VerticalDirection.up,   
                            children: [
                                Icon(Icons.star_border, color:Colors.white, size:25),
                                Icon(Icons.favorite_border, color:Colors.white, size:25),
                                ],
                            ),
                            Row(      
                          //mainAxisSize: MainAxisSize.max,     
                          //mainAxisAlignment: MainAxisAlignment.end, 
                          //verticalDirection: VerticalDirection.down,          
                             children:[ 
                                Text('Paris',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.white), ),
                                ],
                              ),
                            
                        ], // children de la column CARD 1
                        ),
                        ),
                       ],// children de la stack CARD1
                    ),
                  ),
                  ),
                  
                  // CARD LONDRES


                  Card( // ici card dans un container pour apprentissage mais, "en gros", card est un container stylisé, on aurait pu un conatiner avec decoration
                  surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.all(5), // espace blanc autour photo
                    height: 150,
                    child: Stack(
                      fit: StackFit.expand,
            
                      children: [
                        
                        Image.asset('assets/images/londres.jpeg', fit: BoxFit.fitWidth),
                        Container( 
                          padding: const EdgeInsets.all(10), // positionne 'Ville' et 'Etoile'
                          child: 
                          const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          //verticalDirection: VerticalDirection.up,   
                            children: [
                                Icon(Icons.star_border, color:Colors.black, size:25),
                                Icon(Icons.favorite_border, color:Colors.black, size:25),
                                ],
                            ),
                            Row(      
                          //mainAxisSize: MainAxisSize.max,     
                          //mainAxisAlignment: MainAxisAlignment.end, 
                          //verticalDirection: VerticalDirection.down,          
                             children:[ 
                                Text('Londres',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.white), ),
                                ],
                            ),
                            
                        ], // children de la column CARD 2
                        ),
                        ),
                       ],// children de la stack CARD 2
                    ),
                  ),
                  ),

                   // CARD MADRID


                  Card( // ici card dans un container pour apprentissage mais, "en gros", card est un container stylisé
                  surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.all(5), // espace blanc autour photo
                    height: 150,
                    child: Stack(
                      fit: StackFit.expand,
            
                      children: [
                        
                        Image.asset('assets/images/madrid.jpeg', fit: BoxFit.fitWidth),
                        Container( 
                          padding: const EdgeInsets.all(10), // positionne 'Ville' et 'Etoile'
                          child: 
                          const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          //verticalDirection: VerticalDirection.up,   
                            children: [
                                Icon(Icons.star_border, color:Colors.black, size:25),
                                Icon(Icons.favorite_border, color:Colors.black, size:25),
                                ],
                            ),
                            Row(      
                          //mainAxisSize: MainAxisSize.max,     
                          //mainAxisAlignment: MainAxisAlignment.end, 
                          //verticalDirection: VerticalDirection.down,          
                             children:[ 
                                Text('Madrid',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.white), ),
                                ],
                            ),
                            
                        ], // children de la column stack CARD 3
                        ),
                        ),
                       ],// children de la stack CARD 3
                    ),
                  ),
                  ),
                ], // children de la column

                ),
              
            ),
            ), 
            
      );
        
        
    
  }
}
