import 'package:flutter/material.dart';
import 'package:my_trip17_cycle_vie_widget/models/activity_model.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/widgets/activity_card.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;

  const ActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: activities
          .map((activity) => ActivityCard(
                activity: activity,
              ))
          .toList(),
    );
  }
}
