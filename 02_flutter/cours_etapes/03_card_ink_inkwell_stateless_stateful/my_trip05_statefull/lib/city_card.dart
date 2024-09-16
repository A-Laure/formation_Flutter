import 'package:flutter/material.dart';

class CityCard extends StatefulWidget {

  String name;
  String image;
  
  CityCard({super.key, required this.name, required this.image});

  @override
  State<CityCard> createState() => _CityCardState(name, image);

}

class _CityCardState extends State<CityCard> {

  String name;
  String image;


   _CityCardState(this.name, this.image); // change état de la variable


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
                  setState(() {
                    name ='Barcelone';
                  });
                },
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
