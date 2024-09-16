import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trip_app/models/trip_model.dart';

class TripList extends StatelessWidget {
  final List<Trip> trips;
  const TripList({super.key, required this.trips});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, i) {
          var trip = trips[i];
          return ListTile(
            title: Text(trip.city),
            subtitle: Text(DateFormat('d/M/y').format(trip.date)),
            trailing: Icon(Icons.info),
          );
        });
  }
}
