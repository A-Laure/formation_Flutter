import 'package:flutter/material.dart';
import 'package:my_trip18_selection_activites/views/city/city.dart';
import 'package:my_trip18_selection_activites/views/home/home.dart';

void main() {
  runApp(const MyTrip());
}

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: City(),
      
    );
  }
}
