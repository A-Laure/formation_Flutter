import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/datas/data.dart' as data;

class TripProvider with ChangeNotifier{

  final List<Trip> _trips = data.trips;

  UnmodifiableListView<Trip> get trips => UnmodifiableListView(_trips);
  
}