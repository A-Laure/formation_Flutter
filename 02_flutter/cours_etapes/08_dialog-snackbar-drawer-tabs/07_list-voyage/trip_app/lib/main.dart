import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/routes.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/home_view.dart';
import 'package:trip_app/views/not_found/not_found.dart';
import 'package:trip_app/views/trips/trips_view.dart';
import 'package:trip_app/datas/data.dart' as data;

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatefulWidget {
  final List<City> cities = data.cities;
  MyTrip({super.key});

  @override
  State<MyTrip> createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> {

  List<Trip> trips = [];
  
  void addTrip(Trip trip){
    setState(() {
      trips.add(trip);
      print(trips);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeView(),
      // home: City(),
      initialRoute: '/',
      // routes: appRoutes,
      routes: {
        HomeView.routeName: (context) => HomeView(cities: widget.cities),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case CityView.routeName:
            {
              return MaterialPageRoute(builder: (context) {
                final City city = settings.arguments as City;
                return CityView(
                  city: city,
                  addTrip: addTrip,
                );
              });
            }
          case TripsView.routeName:
            {
              return MaterialPageRoute(builder: (context) => TripsView(trips: trips));
            }
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => NotFound());
      },
    );
  }
}
