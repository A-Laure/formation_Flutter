import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/widgets/city_card.dart';
import 'package:trip_app/datas/data.dart' as data;

class HomeView extends StatefulWidget {
  static const String routeName = '/';
  final List<City> cities = data.cities;

  HomeView({super.key});

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
      // drawer: Drawer(
      //     child: ListView(
      //   children: [
      //     DrawerHeader(
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [
      //             Theme.of(context).primaryColor,
      //             Theme.of(context).primaryColor.withOpacity(0.5),
      //           ],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight
      //         ),
      //       ),
      //       child: Text(
      //         'Trip',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //     ), 
      //     ListTile(
      //       leading: Icon(Icons.home),
      //       title: Text('Accueil'),
      //       onTap: () {
      //         Navigator.pushNamed(context, HomeView.routeName);
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.flight),
      //       title: Text('Mes voyages'),
      //       onTap: () {
      //         Navigator.pushNamed(context, HomeView.routeName);
      //       },
      //     ),
      //   ],
      // )),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                }),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(Icons.location_city),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CityView()),
                  // );
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
