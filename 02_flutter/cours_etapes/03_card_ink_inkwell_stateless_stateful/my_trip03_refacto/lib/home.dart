import 'package:flutter/material.dart';
import 'package:my_trip03_refacto/city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key}); // constructeur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          leading: Icon(Icons.home),
          title: Text('Choose My Trip', style: TextStyle(fontWeight: FontWeight.bold) ),
          actions: [Icon(Icons.more_vert)],
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                CityCard(name:'Paris', image:'assets/images/paris.jpeg'),
                CityCard(name:'Madrid', image:'assets/images/madrid.jpeg'),
                CityCard(name:'Londres', image:'assets/images/londres.jpeg'),
              ],
            ),
        ),
     );
    
  }
}