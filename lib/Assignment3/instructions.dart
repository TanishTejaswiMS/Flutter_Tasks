import 'package:flutter/material.dart';

class Instructions extends StatefulWidget {
  const Instructions({ Key? key }) : super(key: key);

  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.description,
                              size: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Instructions",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 3),
                                  child: CircleAvatar(
                                    radius: 5.0,
                                    backgroundColor: Colors.black,
                                  )),
                              SizedBox(
                                width: width/10*8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                  "The test contains 15 questions which have to be attempted within duration of 15 minutes or less.",
                                  textAlign: TextAlign.justify,
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 3),
                                  child: CircleAvatar(
                                    radius: 5.0,
                                    backgroundColor: Colors.black,
                                  )),
                              SizedBox(
                                width: width/10*8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                  "The test would contain multiple-choice questions with 4 options. Questions can have single option or multi option solution.",
                                  textAlign: TextAlign.justify,
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 3),
                                  child: CircleAvatar(
                                    radius: 5.0,
                                    backgroundColor: Colors.black,
                                  )),
                              SizedBox(
                                width: width/10*8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                  "All questions carry 4 marks and incorrect responses carrt negetive 1 mark for each question.",
                                  textAlign: TextAlign.justify,
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 3),
                                  child: CircleAvatar(
                                    radius: 5.0,
                                    backgroundColor: Colors.black,
                                  )),
                              SizedBox(
                                width: width/10*8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                  "No marks would be awarded or be deducted for unatempted questions.",
                                  textAlign: TextAlign.justify,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 170,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
  }
}