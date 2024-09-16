import 'package:flutter/material.dart';
import 'package:my_trip11_gridview/models/activity_model.dart';

class ActivityCard extends StatelessWidget {

  final Activity activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    
    // return Container(
    //   width: double.infinity,
    //   margin: EdgeInsets.all(5),
    //   child: Column(
    //     children: [
    //       Text(activity.name),
    //       Image.asset(activity.image, fit: BoxFit.cover,),
    //     ],
    //   ),
    // );

    return Card(
      child: ListTile(
       leading: CircleAvatar(backgroundImage: AssetImage(activity.image),),
       title: Text(activity.name),
       subtitle: Text(activity.city),
      ),
    );
  }
}