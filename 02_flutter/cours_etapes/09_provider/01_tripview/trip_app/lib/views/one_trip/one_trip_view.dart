import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';

class OneTripView extends StatefulWidget {

  static const String routeName = '/trip';

  final Trip trip;
  final City city;

  const OneTripView({super.key, required this.trip, required this.city});

  @override
  State<OneTripView> createState() => _OneTripViewState();
}

class _OneTripViewState extends State<OneTripView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('One Trip view'),
    );
  }
}