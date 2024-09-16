import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';

class Trip {

  String id;
  String city;
  List<Activity> activities;
  DateTime date;

  Trip({required this.city, required this.activities, required this.date}) :id = UniqueKey().toString();
  // :id = UniqueKey().toString() permet de créer un id unique au moment de l'appel du constructeur(instanciation de la class)
}