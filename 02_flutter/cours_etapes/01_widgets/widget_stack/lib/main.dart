import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.center,
      children: [
        Container(
          width: 400,
          height: 400,
          color: Colors.amber,
        ),
        Text('Salut', textDirection: TextDirection.ltr,),
        Container(
          width: 300,
          height: 300,
          color: Color.fromRGBO(246, 12, 41, 0.2),
        ),
        Container(
          width: 200,
          height: 200,
          color: Color.fromRGBO(75, 254, 41, 0.2),
        ), 
        
      ],
    );
  }
}


