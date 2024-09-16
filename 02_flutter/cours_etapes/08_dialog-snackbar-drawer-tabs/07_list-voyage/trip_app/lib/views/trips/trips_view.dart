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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes voyages'),
      ),
      drawer: const TripDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: TripList(trips: widget.trips)
      ),
    );
  }
}
