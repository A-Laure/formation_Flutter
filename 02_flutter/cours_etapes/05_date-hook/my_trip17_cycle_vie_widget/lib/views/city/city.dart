import 'package:flutter/material.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/widgets/activity_card.dart';
import 'package:intl/intl.dart';

import 'package:my_trip17_cycle_vie_widget/datas/data.dart' as data;
import 'package:my_trip17_cycle_vie_widget/models/activity_model.dart';
import 'package:my_trip17_cycle_vie_widget/models/trip_model.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/widgets/activity_list.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/widgets/trip_activity_list.dart';
import 'package:my_trip17_cycle_vie_widget/views/city/widgets/trip_overview.dart';
import 'package:my_trip17_cycle_vie_widget/views/home/home.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() {
    print('create state');
    return _CityState();
  } 
}

class _CityState extends State<City> {
  
    late Trip mytrip;
    late int index;
  
  _CityState(){
    print('Construct _CityState');
  }

  @override
  void initState(){

    super.initState();
    print('Init State _CityState');

    mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
    index = 0;

  }


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
    print('Build city');
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),  
        title: Text('Organiisation voyage'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }, icon: Icon(Icons.arrow_back)),
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
