import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home Page',
        theme: ThemeData(colorSchemeSeed: Colors.blue,),
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Text('Salut Tout le monde!'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Symbols.travel),
                label: 'Land',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.motorcycle),
                label: 'MoveTo',
              ),
            ],
            
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20) ,
                  child: Row(
                    children: [
                      Icon(Icons.account_circle),
                      Text('Profil')
                  ],
                 ),
                ),
                Container(
                  padding: EdgeInsets.all(20) ,
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                    Text('Paramètres')
                  ],
                 ),
                ),
              ]
              ),
          ),
        ));
  }
}
