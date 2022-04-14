import 'package:assignments/Assignment5/chart.dart';
import 'package:assignments/Assignment5/graph.dart';
import 'package:assignments/Assignment5/shadowbox.dart';
import 'package:assignments/Assignment5/stats.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({ Key? key }) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int os = 80;
    int db = 20;
    int a = 60;
    int db2 = 3;
    double percent = (width/10*9)/100;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Material(
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
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Subjectwise Strength", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                            Icon(Icons.emoji_events, size: 30,),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Operating Systems", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                Text("$os%", style: TextStyle(
                                  color: os>=80?Color(0xff37c197):os<=80&&os>=50?Color(0xffaa4545):os<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Stack(
                              children: [
                                Container(
                                  
                                  width: width,
                                  height: 10,
                                  // color: Colors.black,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffa9a9a9),
            
                                  ),
                                ),
            
                                Container(
                              width: width/100*os,
                              height: 10,
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: os>=80?Color(0xff37c197):os<=80&&os>=50?Color(0xffaa4545):os<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
            
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                      ),
            
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Databases", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                Text("$db%", style: TextStyle(
                                  color: db>=80?Color(0xff37c197):db<=80&&db>=50?Color(0xffaa4545):db<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Stack(
                              children: [
                                Container(
                                  
                                  width: width,
                                  height: 10,
                                  // color: Colors.black,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffa9a9a9),
            
                                  ),
                                ),
            
                                Container(
                              width: width/100*db,
                              height: 10,
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: db>=80?Color(0xff37c197):db<=80&&db>=50?Color(0xffaa4545):db<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
            
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                      ),
            
            
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Algorithms", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                Text("$a%", style: TextStyle(
                                  color: a>=80?Color(0xff37c197):a<=80&&a>=50?Color(0xffaa4545):a<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Stack(
                              children: [
                                Container(
                                  
                                  width: width,
                                  height: 10,
                                  // color: Colors.black,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                   color: Color(0xffa9a9a9),
            
                                  ),
                                ),
            
                                Container(
                              width: width/100*a,
                              height: 10,
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: a>=80?Color(0xff37c197):a<=80&&a>=50?Color(0xffaa4545):a<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
            
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                      ),
            
                      ListTile(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Databases", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                Text("$db2%", style: TextStyle(
                                  color: db2>=80?Color(0xff37c197):db2<=80&&db2>=50?Color(0xffaa4545):db2<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Stack(
                              children: [
                                Container(
                                  
                                  width: width,
                                  height: 10,
                                  // color: Colors.black,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffa9a9a9),
            
                                  ),
                                ),
            
                                Container(
                              width: width/100*db2,
                              height: 10,
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: db2>=80?Color(0xff37c197):db2<=80&&db2>=50?Color(0xffaa4545):db2<50?Color(0xffeb4d3d):Color(0xffeb4d3d),
            
                              ),
                            )
                              ],
                            ),
                          ],
                        ),
                      )   
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            GraphImage(),
            SizedBox(height: 25,),
            Stats(),
            SizedBox(height: 25,),
            ShadowBox(),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}