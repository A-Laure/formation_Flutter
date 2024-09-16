import 'package:flutter/material.dart';
import 'package:trip_app/views/city/city.dart';
import 'package:trip_app/views/home/widgets/city_card.dart';

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
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Home()),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => City()),
                  );
                }),
            label: 'Villes',
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
