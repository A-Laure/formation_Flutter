import 'package:flutter/material.dart';
import 'package:my_trip10_listtile_circleavatar/models/activity_model.dart';

class ActivityCard extends StatelessWidget {

  final Activity activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //  leading: Image.asset(activity.image, width: 50,),
    //  title: Text('activity.name'),
    //  trailing: Icon(Icons.more_horiz), 
    // );

    // return Card(
    //   child: ListTile(
    //    leading: Image.asset(activity.image, width: 50,),
    //    title: Text(activity.name),
    //    trailing: Icon(Icons.more_horiz), 
    //   ),
    // );
    return Card(
      child: ListTile(
       leading: CircleAvatar(backgroundImage: AssetImage(activity.image),),
       title: Text(activity.name),
       subtitle: Text(activity.city),
       trailing: Icon(Icons.more_horiz), 
      ),
    );
  }
}