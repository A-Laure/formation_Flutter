import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/views/one_trip/widgets/trip_activities_list.dart';

class TripActivities extends StatelessWidget {
  final List<Activity> activities;

  const TripActivities({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(children: [
        TabBar(
          tabs: [
            Tab(
              text: 'En cours',
            ),
            Tab(
              text: 'Terminées',
            ),
          ],
        ),
        SizedBox(
          height: 600,
          child: TabBarView(
            // empeche le scroll horizontal vers la tab suivante
            physics: NeverScrollableScrollPhysics(),
            children: [
              TripActivitiesList(activities: activities),
              TripActivitiesList(activities: activities),
            ],
          ),
        )
      ]),
    );
  }
}
