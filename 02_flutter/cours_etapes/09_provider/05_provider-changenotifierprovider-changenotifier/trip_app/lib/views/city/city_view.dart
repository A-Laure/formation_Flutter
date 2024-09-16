import 'package:flutter/material.dart';

import 'package:trip_app/datas/data.dart' as data;
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';
import 'package:trip_app/views/city/widgets/activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_overview.dart';
import 'package:trip_app/views/home/home_view.dart';

class CityView extends StatefulWidget {
  static const String routeName = '/city';
  final City city;
  final Function addTrip;

  List<Activity> get activities {
    return city.activities;
  }

  CityView({super.key, required this.city, required this.addTrip});

  // fonction qui décide de la structure d'affichage en fonction de l'orientation du téléphone
  showContext({required BuildContext context, required List<Widget> children}) {
    // on récupere l'orientation du téléphone
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      );
    } else {
      return Column(
        children: children,
      );
    }
  }

  @override
  State<CityView> createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
  late Trip mytrip;
  late int index;

  

  @override
  void initState() {
    super.initState();
    // mytrip = Trip(city: 'toto', activities: [], date: DateTime.now());
    mytrip = Trip(city: widget.city.name, activities: [], date: DateTime.now());
    index = 0;
  }

  List<Activity> get tripActivities {
    return widget.activities
        .where((activity) => mytrip.activities.contains(activity.id))
        .toList();
  }

  double get amount {
    // return mytrip.activities.fold(0.00, (total, activityId) {
    //   var activity = widget.activities.firstWhere((activity) => activity.id == activityId);
    //   return total + activity.price;
    // });

    double total = 0.00;

    // On parcours chaque identifiant des activités selectionnées stockés dans mytrip.activities
    for (var activityId in mytrip.activities) {
      // On parcours chaque activité dans widget.activities afin de trouver une correspondance
      for (var activity in widget.activities) {
        // On recherche manuellement l'activité correspondante(a activityId) dans widget.activities dans le but de recuperer le prix et l'additionner au total
        if (activityId == activity.id) {
          total += activity.price;
          // on arrete la recherche dès que l'on a trouvé la correspondance
          break;
        }
      }
    }
    return total;
  }

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

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  void toggleActivity(Activity activity) {
    setState(() {
      mytrip.activities.contains(activity)
          ? mytrip.activities.remove(activity)
          : mytrip.activities.add(activity);
    });
  }

  void deleteTripActivity(String id) {
    setState(() {
      mytrip.activities.remove(id);
    });
  }

  void saveTrip() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Voulez-vous sauvegarder votre voyage ?'),
            contentPadding: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  TextButton(
                    onPressed: () {},
                    child: Text('Annuler'),
                  ),

                  SizedBox(width: 24,),

                  FilledButton(
                    onPressed: () {Navigator.pop(context, 'save');},
                    child: Text('Sauvegarder'),
                  ),
                ],
              )
            ],
          );
        }).then((result) {
          widget.addTrip(mytrip);
          Navigator.pushNamed(context, HomeView.routeName);
        });
  }
  @override
  Widget build(BuildContext context) {
    // final City city = ModalRoute.of(context)!.settings.arguments as City;

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text('Organisation voyage'),
        actions: [Icon(Icons.more_vert)],
      ),
      drawer: TripDrawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: widget.showContext(
          context: context,
          children: [
            TripOverview(
              cityName: widget.city.name,
              setDate: setDate,
              trip: mytrip,
              amount: amount,
            ),
            Expanded(
              child: index == 0
                  ? ActivityList(
                      activities: widget.activities,
                      selectedActivities: mytrip.activities,
                      toggleActivity: toggleActivity,
                    )
                  : TripActivityList(
                      activities: tripActivities,
                      deleteTripActivity: deleteTripActivity),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: saveTrip,
        child: Icon(Icons.save),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Découverte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'Mes activités',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
