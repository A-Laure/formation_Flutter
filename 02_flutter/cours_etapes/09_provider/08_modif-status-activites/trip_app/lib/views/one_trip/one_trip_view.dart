import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/providers/city_providers.dart';
import 'package:trip_app/providers/trip_provider.dart';
import 'package:trip_app/views/one_trip/widgets/trip_activities.dart';
import 'package:trip_app/views/one_trip/widgets/trip_city_bar.dart';

class OneTripView extends StatefulWidget {

  static const String routeName = '/trip';

  // final Trip trip;
  // final City city;

  // const OneTripView({super.key, required this.trip, required this.city});
  const OneTripView({super.key});

  @override
  State<OneTripView> createState() => _OneTripViewState();
}

class _OneTripViewState extends State<OneTripView> {
  @override
  Widget build(BuildContext context) {

    final String cityName = (ModalRoute.of(context)!.settings.arguments as Map<String, String>)['cityName']!;
    final String tripId = (ModalRoute.of(context)!.settings.arguments as Map<String, String>)['tripId']!;

    final City city = Provider.of<CityProvider>(context).getCityByName(cityName);
    final Trip trip = Provider.of<TripProvider>(context).getById(tripId);


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
            TripCityBar(city: city),
            TripActivities(activities: trip.activities)
        ],),
      ),
    );
  }
}