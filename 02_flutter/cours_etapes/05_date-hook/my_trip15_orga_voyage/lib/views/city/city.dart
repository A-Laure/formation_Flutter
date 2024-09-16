import 'package:flutter/material.dart';
import 'package:my_trip15_orga_voyage/views/city/widgets/activity_card.dart';
import 'package:intl/intl.dart';

import 'package:my_trip15_orga_voyage/datas/data.dart' as data;
import 'package:my_trip15_orga_voyage/models/activity_model.dart';
import 'package:my_trip15_orga_voyage/models/trip_model.dart';
import 'package:my_trip15_orga_voyage/views/city/widgets/trip_overview.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());

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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Organiisation voyage'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // on le copy/bascule dans le widget TripOverview
            // Container(
            //     padding: EdgeInsets.all(10),
            //     height: 200,
            //     color: Colors.white,
            //     child: Column(
            //       children: [
            //         Text(
            //           'Paris',
            //           style: TextStyle(
            //               fontSize: 24, decoration: TextDecoration.underline),
            //         ),
            //         SizedBox(
            //           height: 30,
            //         ),
            //         Row(
            //           children: [
            //             Expanded(
            //               child: Text(
            //                 DateFormat('d/M/y').format(mytrip.date),
            //                 style: TextStyle(fontSize: 20),
            //               ),
            //             ),
            //             ElevatedButton(
            //                 onPressed: setDate,
            //                 child: Text('Sélectionner une date'))
            //           ],
            //         ),
            //         SizedBox(
            //           height: 30,
            //         ),
            //         Row(
            //           children: [
            //             Expanded(
            //                 child: Text(
            //               'Montant/personne',
            //               style: TextStyle(
            //                   fontSize: 20),
            //             )),
            //             Text(' $amount €', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            //           ],
            //         )
            //       ],
            //     )),
            TripOverview(
              setDate: setDate,
              trip: mytrip
            ),
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
