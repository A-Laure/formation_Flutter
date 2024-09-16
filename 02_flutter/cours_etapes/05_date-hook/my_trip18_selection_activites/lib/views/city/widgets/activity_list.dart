import 'package:flutter/material.dart';
import 'package:my_trip18_selection_activites/models/activity_model.dart';
import 'package:my_trip18_selection_activites/views/city/widgets/activity_card.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;
  final List<String> selectedActivities;
  final Function(String) toggleActivity;

  const ActivityList({
    super.key,
    required this.activities,
    required this.selectedActivities,
    required this.toggleActivity,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: activities
          .map((activity) => ActivityCard(
                activity: activity,
                isSelected: selectedActivities.contains(activity.id),
                toggleActivity: () => toggleActivity(activity.id)
              ))
          .toList(),
    );
  }
}
