import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/providers/city_providers.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/widgets/city_card.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/';
  // final List<City> cities;

  // HomeView({super.key, required this.cities});
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    // List<City> cities = Provider.of<List<City>>(context);
    List<City> cities = Provider.of<CityProvider>(context).cities;

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
                for (var city in cities) CityCard(city: city),
              ],
            ),
          )),

    );
  }
}
