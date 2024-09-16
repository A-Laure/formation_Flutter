import 'package:contact_list/firebase_options.dart';
import 'package:contact_list/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // on s'assure que le moteur de widgets de flutter soit bien initialisé, ça garantit que le framework est pret a etre utilisé 
  WidgetsFlutterBinding.ensureInitialized();
  // ça initialise l'instance Firebase de l'application avec des options de configurations spécifiques à la plateforme (par rapport au fichier de configuration firebase_options.dart)
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

