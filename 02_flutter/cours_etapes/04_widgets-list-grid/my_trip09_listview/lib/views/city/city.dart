import 'package:flutter/material.dart';
import 'package:my_trip09_listview/models/activity_model.dart';
import 'package:my_trip09_listview/datas/data.dart' as data;
import 'package:my_trip09_listview/views/city/widgets/activity_card.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities =  data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Paris'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        // child: Column(
        //   children: [
        //     for(var activity in widget.activities)
        //       ActivityCard(activity: activity),
        //   ],
        // ),

        // premier façon pas tres optimisé si vous avez beaucoup de données
        // child: ListView(
        //   children: 
        //     // for(var activity in widget.activities)
        //     //   ActivityCard(activity: activity),

        //     // widget.activities.map((activity) {
        //     //   return ActivityCard(activity: activity);
        //     // }).toList(),

        //     widget.activities.map((activity) => ActivityCard(activity: activity)).toList(),
        // ),

        // le plus opti et le plus utilisé
        // child: ListView.builder(
        //   itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
        //   itemCount: widget.activities.length,
        // ),

        child: ListView.separated(
          itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
          // separatorBuilder: (context, index) => Divider(),
          separatorBuilder: (context, index) => SizedBox(height: 50,),
          itemCount: widget.activities.length,
        ),

      ),
    );
  }
}
