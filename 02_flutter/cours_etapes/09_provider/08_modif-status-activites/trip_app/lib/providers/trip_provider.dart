import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/datas/data.dart' as data;

class TripProvider with ChangeNotifier{

  final List<Trip> _trips = data.trips;

  UnmodifiableListView<Trip> get trips => UnmodifiableListView(_trips);

  void addTrip(Trip trip) {
      _trips.add(trip);
      notifyListeners();
  }


  // Methode qui va permettre de nous retourner toutes les données du voyage demandé en lui passant en parametre l'id du voyage voulu 
  // ex : lorsque l'on clique sur un voyage parmis la liste de la page trips_view ( le widgget trip_list nous renvoie ver la page one_trip_view en nous donnant en argument dans la route l'id et la ville du voyage en question)
  Trip getById(String id ){
    return trips.firstWhere((trip) => trip.id == id);
  }


  void setActivityToDone(Activity activity){
    activity.status = ActivityStatus.done;
    notifyListeners();
  }

  
}