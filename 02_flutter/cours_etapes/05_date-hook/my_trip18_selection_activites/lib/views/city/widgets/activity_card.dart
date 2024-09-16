import 'package:flutter/material.dart';
import 'package:my_trip18_selection_activites/models/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  final bool isSelected;
  final VoidCallback toggleActivity;

  const ActivityCard(
      {super.key,
      required this.activity,
      required this.isSelected,
      required this.toggleActivity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink.image(
            image: AssetImage(activity.image),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: toggleActivity,
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (isSelected)
                        Icon(
                          Icons.check,
                          size: 40,
                          color: Colors.white,
                        )
                    ],
                  ),
                ),
                Row(
                  children: [Text(activity.name, style: TextStyle(fontSize: 20, color: Colors.white),)],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
