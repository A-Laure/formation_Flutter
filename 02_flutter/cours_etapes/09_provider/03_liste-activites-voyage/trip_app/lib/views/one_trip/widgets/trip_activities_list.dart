import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';

class TripActivitiesList extends StatelessWidget {
  final List<Activity> activities;
  const TripActivitiesList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) => Text(activities[index].name),);
  }
}