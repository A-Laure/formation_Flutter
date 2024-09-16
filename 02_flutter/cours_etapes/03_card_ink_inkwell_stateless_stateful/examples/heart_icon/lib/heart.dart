import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> { // le prog ne  recharche que le state de la class qui elle initialise

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() { // chge l'état de la variable, met à jour le widget
            liked = !liked; // le "!" met la valeur inverse, si true, met false
          });
        },
        icon: Icon(liked ? Icons.favorite: Icons.favorite_border, size: 80, color: liked? Colors.green : Colors.blue),
      );
  }
}