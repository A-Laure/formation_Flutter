import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/views/one_trip/widgets/trip_city_bar.dart';

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
      body: SingleChildScrollView(
        child: Column(children: [
            TripCityBar(city: widget.city),
            Container(height: 200, color: Colors.blue,)
        ],),
      ),
    );
  }
}