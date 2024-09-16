// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_trip05_statefull/home.dart';

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
