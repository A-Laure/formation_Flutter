import 'package:flutter/material.dart';
import 'package:my_trip14_showdatepicker/views/city/city.dart';
// import 'package:my_trip14_showdatepicker/views/home/home.dart';

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
