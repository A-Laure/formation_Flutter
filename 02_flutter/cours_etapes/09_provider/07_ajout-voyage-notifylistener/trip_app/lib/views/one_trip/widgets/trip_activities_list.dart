import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';

class TripActivitiesList extends StatelessWidget {
  final List<Activity> activities;
  const TripActivitiesList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final Activity activity = activities[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.centerRight,
              child: Icon(Icons.check, color: Colors.white,),
            ),
            // il a besoin d'une clé unique pour l'associé a l'élément ici pour on a l'id de l'activité
            key: ValueKey(activity.id),
            child: Card(
              child: ListTile(
                title: Text(activity.name),
              ),
            ),
            // onDismissed: (context) {
            //   print('Supprimé');
            // },
            // le underscore indique que l'on ne se sert pas du context
            onDismissed: (_) {
              print('Supprimé');
            },
          ),
        );
      },
    );
  }
}
