import 'package:assignments/Assignment3/instructions.dart';
import 'package:flutter/material.dart';

class TestDetails extends StatefulWidget {
  const TestDetails({ Key? key }) : super(key: key);

  @override
  _TestDetailsState createState() => _TestDetailsState();
}

class _TestDetailsState extends State<TestDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
                children: [
                  Container(
                    width: width,
                    height: height / 10 * 6,
                    decoration: BoxDecoration(
                      color: Color(0xffFbefcc),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_back),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 3),
                                    child: Text(
                                      "FREE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xfffeaf3e),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Test",
                                      style: TextStyle(
                                        color: Color(0xffcfa639),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Scholarship Test",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0e0b3),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  title: Text(
                                    "Available Now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.fact_check,
                                      color: Colors.black,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0e0b3),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  title: Text(
                                    "15 Questions 60 Marks",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Text("15 min"),
                                ),
                                ListTile(
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.translate,
                                      color: Colors.black,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF0e0b3),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  title: Text(
                                    "Language",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Text("English"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Instructions(),
                  ),
                  
                ],
              );
  }
}