import 'package:flutter/material.dart';
import 'package:trip_app/views/home/home_view.dart';
import 'package:trip_app/views/trips/trips_view.dart';

class TripDrawer extends StatelessWidget {
  const TripDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child: Text(
              'Trip',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ), 
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushNamed(context, HomeView.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.flight),
            title: Text('Mes voyages'),
            onTap: () {
              Navigator.pushNamed(context, TripsView.routeName);
            },
          ),
        ],
      ));
  }
}