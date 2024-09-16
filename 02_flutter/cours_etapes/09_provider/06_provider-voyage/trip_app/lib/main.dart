import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/providers/city_providers.dart';
import 'package:trip_app/providers/trip_provider.dart';
import 'package:trip_app/routes.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/home_view.dart';
import 'package:trip_app/views/not_found/not_found.dart';
import 'package:trip_app/views/one_trip/one_trip_view.dart';
import 'package:trip_app/views/trips/trips_view.dart';
import 'package:trip_app/datas/data.dart' as data;

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatefulWidget {
  // final List<City> cities = data.cities;
  MyTrip({super.key});

  @override
  State<MyTrip> createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> {
  
  //   void addTrip(Trip trip) {
  //   setState(() {
  //     trips.add(trip);
  //     print(trips);
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    // return ChangeNotifierProvider<CityProvider>(
    //   create: (context) => CityProvider(),
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CityProvider()),
        ChangeNotifierProvider.value(value: TripProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          HomeView.routeName: (context) => HomeView(),
          CityView.routeName: (context) => CityView(),
        },
        // onGenerateRoute: (settings) {
        //   switch (settings.name) {
        //     case CityView.routeName:
        //       {
        //         return MaterialPageRoute(builder: (context) {
        //           final City city = settings.arguments as City;
        //           return CityView(
        //             city: city,
        //             addTrip: addTrip,
        //           );
        //         });
        //       }
        //     case TripsView.routeName:
        //       {
        //         return MaterialPageRoute(
        //             builder: (context) => TripsView(trips: trips));
        //       }
        //     case OneTripView.routeName:
        //       {
        //         return MaterialPageRoute(builder: (context) {
        //           String tripId =
        //               (settings.arguments as Map<String, String>)['tripId']!;
        //           String cityName =
        //               (settings.arguments as Map<String, String>)['cityName']!;
      
        //           return OneTripView(
        //             trip: trips.firstWhere((trip) => trip.id == tripId),
        //             city: widget.cities.firstWhere((city) => city.name == cityName),
        //           );
        //         });
        //       }
        //   }
        // },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => NotFound());
        },
      ),
    );
  }
}
