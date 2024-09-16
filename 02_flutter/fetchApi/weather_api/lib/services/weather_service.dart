import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_api/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService{

  static const apiUrl = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey; 

  WeatherService({ required this.apiKey});


  Future<Weather> getWeather(String cityName) async {
    final response = await http.get(Uri.parse('$apiUrl?q=$cityName&appid=$apiKey'));

    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Echec du chargement des données');
    }
  }

  Future<String> getCurrentCity() async {

    LocationPermission permission = await Geolocator.checkPermission();
      if(permission == LocationPermission.denied){
        permission = await Geolocator.requestPermission();
      }

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      List<Placemark> Placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    
      String? city = Placemarks[0].locality;

      return city ?? '';

  }

}