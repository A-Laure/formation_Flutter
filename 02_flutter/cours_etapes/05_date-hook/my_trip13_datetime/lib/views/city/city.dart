import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_trip13_datetime/models/activity_model.dart';
import 'package:my_trip13_datetime/datas/data.dart' as data;
import 'package:my_trip13_datetime/models/trip_model.dart';
import 'package:my_trip13_datetime/views/city/widgets/activity_card.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {

  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());

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
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(DateFormat('d/M/y').format(mytrip.date)),
                          // child: Text(DateFormat('d/M/y').format(DateTime.now())),
                          // child: Text(DateFormat('EEEE d, LLLL, y').format(DateTime.now())),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('Sélectionner une date'))
                      ],
                    )
                  ],
                )),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: widget.activities
                    .map((actvity) => ActivityCard(
                          activity: actvity,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
