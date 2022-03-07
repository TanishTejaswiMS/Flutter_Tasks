import 'package:assignments/Assignment1/homepage.dart';
import 'package:assignments/Assignment2/animation1.dart';
import 'package:assignments/Assignment3/testpage.dart';
import 'package:assignments/Assignment4/count.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Count(),
    );
  }
}