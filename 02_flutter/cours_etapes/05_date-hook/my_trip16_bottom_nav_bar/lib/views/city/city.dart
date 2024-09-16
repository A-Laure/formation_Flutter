import 'package:flutter/material.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/activity_card.dart';
import 'package:intl/intl.dart';

import 'package:my_trip16_bottom_nav_bar/datas/data.dart' as data;
import 'package:my_trip16_bottom_nav_bar/models/activity_model.dart';
import 'package:my_trip16_bottom_nav_bar/models/trip_model.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/activity_list.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/trip_activity_list.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/trip_overview.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());

  int index = 0;

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate != null) {
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex){
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Organisation voyage'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TripOverview(setDate: setDate, trip: mytrip),
            Expanded(
              // child: ActivityList(activities: widget.activities)
              // child: TripActivityList()
              child: index == 0 ? ActivityList(activities: widget.activities) : TripActivityList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Découverte',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stars),
          label: 'Mes activités',
        ),
      ],
      onTap: switchIndex,
      ),
      
    );
  }
}
