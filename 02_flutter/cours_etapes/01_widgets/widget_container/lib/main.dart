import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      alignment: Alignment.center,
      // margin: EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // color: Colors.green,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(color: Colors.green, width: 3.0, style: BorderStyle.solid)
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              spreadRadius: 2.0,
              blurRadius: 40.0,
              offset: Offset(40, 0),
            ),
          ],
          // shape: BoxShape.circle
        ),
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.only(left: 0, top:32.0),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "Bravo!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            // shadows: [
            //   Shadow(
            //     color: Color.fromRGBO(0, 0, 0, 0.8),
            //     blurRadius: 10.0,
            //     offset: Offset(10, 0),
            //   )
            // ]
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

