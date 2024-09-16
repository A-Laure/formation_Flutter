import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/widgets/city_card.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/';
  final List<City> cities;

  HomeView({super.key, required this.cities});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.home),
        title: const Text('MyTrip'),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      drawer: TripDrawer(),
      body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.grey[100],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var city in widget.cities) CityCard(city: city),
              ],
            ),
          )),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //           icon: Icon(Icons.home),
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => HomeView()),
      //             );
      //           }),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: IconButton(
      //           icon: Icon(Icons.location_city),
      //           onPressed: () {
      //             // Navigator.push(
      //             //   context,
      //             //   MaterialPageRoute(builder: (context) => CityView()),
      //             // );
      //           }),
      //       label: 'Villes',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.motorcycle),
      //       label: 'MoveTo',
      //     ),
      //   ],
      // ),
    );
  }
}
