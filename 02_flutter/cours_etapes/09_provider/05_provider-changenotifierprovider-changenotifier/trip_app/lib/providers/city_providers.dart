import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/datas/data.dart' as data;

class CityProvider with ChangeNotifier{

  final List<City> _cities = data.cities;

  UnmodifiableListView<City> get cities => UnmodifiableListView(_cities);

}