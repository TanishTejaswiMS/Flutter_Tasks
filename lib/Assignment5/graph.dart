import 'package:flutter/material.dart';

class GraphImage extends StatefulWidget {
  const GraphImage({ Key? key }) : super(key: key);

  @override
  State<GraphImage> createState() => _GraphImageState();
}

class _GraphImageState extends State<GraphImage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int percentile = 30;
    return Material(
              elevation: 40,
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      ListTile(
                        tileColor: Colors.white,
                        title: Text("Daily Goal", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                        ),),
                        subtitle: Text("Today"),
                      ),  
                      Image.asset("lib/Assignment5/$percentile.png"),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("View Details ", style: TextStyle(
                                  backgroundColor: Colors.white,
                                  color: Color(0xfff5975e),
                                ),),
                                Icon(Icons.arrow_forward,color: Color(0xfff5975e), size: 18,)
                              ],
                            ),
                          ),
                        ),
                      ),  
                    ],
                  ),
                ),
              ),
            );
  }
}