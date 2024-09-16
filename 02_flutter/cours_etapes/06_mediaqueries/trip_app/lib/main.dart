import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trip_app/views/city/city.dart';
// import 'package:trip_app/views/home/home.dart';

void main() {

  // Bloquer le telephone en mode portrait
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]).then((value)=> runApp(MyTrip()));

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
