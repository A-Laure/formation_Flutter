import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(100),
      child: Container( 
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.teal, width: 3.00, style: BorderStyle.solid),
            boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 15.00, blurRadius: 10.00)]
         ),
        )
      );
  }
}

