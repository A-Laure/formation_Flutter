import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.blue,
          height: 150.0,
        ),
        Expanded(
          child: Container(
          color: Colors.red,
          height: 150.0,
        ),
        ),
        Container(
          color: Colors.yellow,
          height: 150.0,
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.teal,
            height: 150.0,
          ),
        ),
      ],
    );
  }
}
