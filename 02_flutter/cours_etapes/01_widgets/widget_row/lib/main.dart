import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Row(
    //   // mainAxisAlignment: MainAxisAlignment.start,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   textDirection: TextDirection.ltr,
    //   children: [
    //     Container(
    //       color: Colors.blue,
    //       height: 100,
    //       width: 100,
    //     ),
    //     Expanded(
    //       child: Container(
    //         color: Colors.pink,
    //         height: 100,
    //         width: 100,
    //       ),
    //     ),
    //     Container(
    //       color: Colors.amber,
    //       height: 100,
    //       width: 100,
    //     )
    //   ],
    // );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
                height: 100,
                width: 100,
              ),
            ),
            Container(
              color: Colors.amber,
              height: 100,
              width: 100,
            )
          ],
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                height: 100,
                width: 100,
              ),
            ),
          ],
        )
      ],
    );
  }
}
