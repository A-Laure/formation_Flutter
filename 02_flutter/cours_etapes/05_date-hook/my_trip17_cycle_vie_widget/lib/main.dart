import 'package:flutter/material.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/city.dart';
import 'package:my_trip17_cycle_vie_widget/views/home/home.dart';

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
