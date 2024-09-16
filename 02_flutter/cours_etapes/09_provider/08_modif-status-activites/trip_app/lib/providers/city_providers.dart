import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/datas/data.dart' as data;

class CityProvider with ChangeNotifier{

  final List<City> _cities = data.cities;

  UnmodifiableListView<City> get cities => UnmodifiableListView(_cities);

  // on creer une methode(fonction dans une classe) qui va nous permettre de récupérer la ville recherché avec firstWhere qui va nous retourner la premiere occurence trouvé avec l'égalité du nom de la ville parcourru ave le nom de la ville recherché 
  City getCityByName(String cityName) => cities.firstWhere((city) => city.name == cityName);

}