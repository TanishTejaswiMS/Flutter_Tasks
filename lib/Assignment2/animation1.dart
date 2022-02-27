// 14/02/2022

import 'package:assignments/Assignment2/home.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  
  const Home2({ Key? key }) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> with TickerProviderStateMixin  {
     Future<void> openHomeScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
context,MaterialPageRoute(builder: (context) => Animation2()),);
    });
  }

  @override
  Widget build(BuildContext context) {



    final control = AnimationController(
      vsync: this,
    duration: Duration(seconds: 2),
    );
  final animation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(control);


  control.forward();
  openHomeScreen();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FadeTransition(
              opacity: animation,
              child: Image.asset("images/logo.png", width: 100,),
            ),
          ),
          // ElevatedButton(onPressed: (){
          //   control.forward();
          // }, child: Text("Start Animation"))
        ],
      ),
    );
  }
}