import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';
import 'package:trip_app/views/trips/widgets/trip_list.dart';

class TripsView extends StatefulWidget {
  static const String routeName = '/trips';
  final List<Trip> trips;
  const TripsView({super.key, required this.trips});

  @override
  State<TripsView> createState() => _TripsViewState();
}

class _TripsViewState extends State<TripsView> {

  // final now = DateTime.now();
  // final later = now.add(Duration(days: 1));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mes voyages'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'A venir',
            ),
            Tab(
              text: 'Passé',
            ),
          ]),
        ),
        drawer: const TripDrawer(),
        body: TabBarView(children: [
          TripList(trips: widget.trips.where((trip) => DateTime.now().isBefore(trip.date.add(Duration(days: 1)))).toList()),
          TripList(trips: widget.trips.where((trip) => DateTime.now().isAfter(trip.date.add(Duration(days: 1)))).toList()),
          
        ],),
      ),
    );
  }
}
