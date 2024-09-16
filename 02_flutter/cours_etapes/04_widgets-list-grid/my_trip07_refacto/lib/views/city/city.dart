import 'package:flutter/material.dart';
import 'package:my_trip07_refacto/models/activity_model.dart';
import 'package:my_trip07_refacto/datas/data.dart' as data;

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
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
