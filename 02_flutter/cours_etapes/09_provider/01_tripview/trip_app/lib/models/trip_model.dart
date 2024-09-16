import 'package:flutter/material.dart';

class Trip {

  String id;
  String city;
  List<String> activities;
  DateTime date;

  Trip({required this.city, required this.activities, required this.date}) :id = UniqueKey().toString();
  // :id = UniqueKey().toString() permet de créer un id unique au moment de l'appel du constructeur(instanciation de la class)
}