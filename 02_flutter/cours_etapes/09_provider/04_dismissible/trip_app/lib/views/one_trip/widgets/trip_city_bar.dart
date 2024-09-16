import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';

class TripCityBar extends StatelessWidget {
  final City city;

  const TripCityBar({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset(
            city.image,
            fit: BoxFit.cover,
          ),
          Container(
            // pour assombrir l'image pour mieux voir le texte
            color: Colors.black26,
            padding: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Column(children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
                  ),
                ],
              ),
              Expanded(
                  child: Center(
                child: Text(
                  city.name,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
