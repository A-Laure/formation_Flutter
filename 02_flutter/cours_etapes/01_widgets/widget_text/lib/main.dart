import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const Text(
    //   'Hello World!',
    //   textDirection: TextDirection.ltr,
    // );
    // return const Center(
    //   child: Text(
    //     'Hello World!',
    //     textDirection: TextDirection.ltr,
    //     style: TextStyle(
    //       fontSize: 40,
    //       fontWeight: FontWeight.w900,
    //       // color: Color.fromRGBO(250, 215, 63, 1),
    //       color: Colors.deepOrange,
    //     ),
    //   ),
    // );

    return const Center(
      child: Text.rich(
          TextSpan(
            text: 'Fr',
            style: TextStyle(
              color: Colors.blue,
              // fontSize: 120.0,
            ),
            children: [
              TextSpan(
                text: 'an',
                style: TextStyle(
                  color: Colors.white,
                )
              ),
              TextSpan(
                text: 'ce',
                style: TextStyle(
                  color: Colors.red,
                )
              )
            ]
          ),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      );

  }
}

