import 'package:flutter/material.dart';
import 'package:my_trip04_ink_inkwell/city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          leading: Icon(Icons.home),
          title: Text('MyTrip'),
          actions: [Icon(Icons.more_vert)],
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CityCard(name: 'Paris', image: 'assets/images/paris.jpeg',),
                CityCard(name: 'Londres', image: 'assets/images/londres.jpeg',),
                // CityCard(),
              ],
            )),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.flight_land),
                label: 'Land',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.motorcycle),
                label: 'MoveTo',
              ),
            ],
            
          ),
      );
  }
}