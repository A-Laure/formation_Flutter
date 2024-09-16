import 'package:flutter/material.dart';
import 'package:my_trip16_bottom_nav_bar/views/home/widgets/city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {
      'name': 'Paris',
      'image': 'assets/images/paris.jpeg',
      'favorite': false,
    },
    {
      'name': 'Londres',
      'image': 'assets/images/londres.jpeg',
      'favorite': false,
    },
    {
      'name': 'Berlin',
      'image': 'assets/images/paris.jpeg',
      'favorite': false,
    },
    {
      'name': 'Barcelone',
      'image': 'assets/images/londres.jpeg',
      'favorite': false,
    },
  ];

  void switchFavorite(city) {
    int index = cities.indexOf(city);
    setState(() {
      cities[index]['favorite'] = !cities[index]['favorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        leading: const Icon(Icons.home),
        title: const Text('MyTrip'),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.grey[100],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var city in cities)
                  CityCard(
                      name: city['name'],
                      image: city['image'],
                      favorite: city['favorite'],
                      updateFavorite: () {
                        switchFavorite(city);
                      }),
            
                // CityCard(name: 'Londres', image: 'assets/images/londres.jpeg',),
                // CityCard(),
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
