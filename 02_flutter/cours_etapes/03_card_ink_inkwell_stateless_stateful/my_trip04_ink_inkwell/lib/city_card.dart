// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {

  final String name;
  final String image;

  

  CityCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
      elevation: 2,
      child: Container(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(image),
              child: InkWell(
                onTap: () {
                  print('TapTap');
                } ,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon(Icons.favorite, size: 40,color: Colors.white,),
                        Icon(
                          Icons.star_border,
                          size: 40,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      // Icon(Icons.favorite, size: 40,color: Colors.white,),
                      Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
