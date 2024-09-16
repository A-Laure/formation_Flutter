import 'package:flutter/material.dart';

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          leading: Icon(Icons.home),
          title: Text('MyTrip'),
          actions: [Icon(Icons.more_vert)],
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
                  elevation: 2,
                  child: Container(
                    height: 150,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/paris.jpeg',
                          fit: BoxFit.fitWidth,
                        ),
                        // Container(
                        //   padding: EdgeInsets.all(10),
                        //   // padding: EdgeInsets.only(left:20, right: 10, top:40, bottom: 30),
                        //   // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        //   alignment: Alignment.topRight,
                        //   child: const Icon(
                        //     Icons.star_border,
                        //     size: 40,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        // Container(
                        //   padding: EdgeInsets.all(10),
                        //   alignment: Alignment.bottomLeft,
                        //   child: Text(
                        //     'Paris',
                        //     style: TextStyle(color: Colors.white, fontSize: 30),
                        //   ),
                        // )
                        // Container(
                        //   padding: EdgeInsets.all(10),
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Row(
                        //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         mainAxisAlignment: MainAxisAlignment.end,
                                
                        //         children: [
                        //           // Icon(Icons.favorite, size: 40,color: Colors.white,),
                        //           Icon(Icons.star_border, size: 40,color: Colors.white,)
                        //         ],
                        //       ),
                        //       Row(
                        //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         mainAxisAlignment: MainAxisAlignment.start,
                                
                        //         children: [
                        //           // Icon(Icons.favorite, size: 40,color: Colors.white,),
                        //           Text('Paris', style: TextStyle(color: Colors.white, fontSize: 30),)
                        //         ],
                        //       ),
                        //     ],
                        //   ),

                        // ),
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
                                    Icon(Icons.star_border, size: 40,color: Colors.white,)
                                 ],
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.start,
                                
                                children: [
                                  // Icon(Icons.favorite, size: 40,color: Colors.white,),
                                  Text('Paris', style: TextStyle(color: Colors.white, fontSize: 30),)
                                ],
                              ),
                            ],
                          ),

                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            )),
      ),
    );
  }
}
