// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heart_icon/heart.dart';
// import 'heart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Heart()
    );
  }
}