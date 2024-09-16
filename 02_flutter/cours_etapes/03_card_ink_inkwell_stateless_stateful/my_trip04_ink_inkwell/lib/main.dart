import 'package:flutter/material.dart';
import 'package:my_trip04_ink_inkwell/home.dart';

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
