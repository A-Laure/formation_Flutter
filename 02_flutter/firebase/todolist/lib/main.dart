import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todolist/firebase_options.dart';
import 'package:todolist/pages/home_page.dart';

Future<void> main() async {

// On s'assure que le moteur de widgets de Flutter soit bien initialisé, garantie que le framwork est prêt à être utilisé
WidgetsFlutterBinding.ensureInitialized();
// await initialise l'instance Firebase de l'application avec des options de config specifiq à la plateforme par rapport au fichier de config firebase_options.dart
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
      
  }
}
