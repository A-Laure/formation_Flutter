import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/home_view.dart';

void main() {
  runApp(const MyTrip());
}

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeView(),
      // home: City(),
      initialRoute: '/',
      routes: {

        '/' : (context) {
          return HomeView();
        },

        '/city' : (context) {
          return CityView();
        },
        // '/city' : (context) => CityView(),
        
      },
    );
  }
}
