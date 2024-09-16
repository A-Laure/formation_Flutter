import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const Center(
    //     child: Image(
    //       image: NetworkImage('https://media.licdn.com/dms/image/C5103AQFnJBo8Po094g/profile-displayphoto-shrink_800_800/0/1517287744769?e=1710979200&v=beta&t=761kmabF-_mX75a2MQPDhtcEvZ97v3f0NoCh4VVr5HQ'),
    //       semanticLabel: 'toto',
    //       width: 150.0,
    //       height: 300.0,
    //     ),
    //   );
    return const Center(
        child: Image(
          image: AssetImage('assets/flutter.png'),
          // width: 50.0,
        ),
      );
  }
}


