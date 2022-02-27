import 'dart:async';

import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({Key? key}) : super(key: key);

  @override
  _Animation2State createState() => _Animation2State();
}

class _Animation2State extends State<Animation2>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> position;
  String text = "";
  int number = 0;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    position = Tween<Offset>(
      begin: Offset(0.0, 1.5),
      end: Offset(0.0, 0.1),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));

    controller.forward();
    LoadAnimation();
    super.initState();
  }

  double _width = 1;
  double _height = 8;
  Color _color = Colors.green;

  LoadAnimation() {
    Future.delayed(const Duration(seconds: 3), () {
      for (int i = 0; i <= 10; i++) {
//   Future.delayed(Duration(seconds: 2), () {
//     setState(() {

// });
// });

        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _width = 70;
            // text = "ETFs";
          });
        });
        Future.delayed(Duration(milliseconds: 2500), () {
          setState(() {
            _width = 1;
            // text = "Stocks";
          });
        });
      }
    });

    LoadAnimation2();
  }

  LoadAnimation2() {
    Future.delayed(Duration(seconds: 4), () {
      LoadAnimation();
      if (number == 0) {
        setState(() {
          text = "ETFs";
          number = 1;
        });
      } else if (number == 1) {
        text = "Stocks";
        number = 2;
      } else {
        text = "Direct Mutual Funds";
        number = 0;
      }
//     setState(() {
//   text = "Direct Mutual Funds";
// });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideTransition(
        position: position,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/logo2.png",
                width: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Simple",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                "Investing.",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                ),
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 8),
                child: Text("$text"),
              ),
              SizedBox(
                height: 200,
              ),
              Center(child: Text("By proceeding, I agree to the T&C.")),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        // padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
                        // color: const Color(0xFF4285F4),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Image.asset(
                                'images/google.png',
                                height: 30.0,
                              ),
                              Center(
                                child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Center(
                                        child: Text(
                                      "Sign in with Google",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ))),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Center(child: Text("Continue With Other Email", style: TextStyle(
                color: Color(0xff00c798),
                fontSize: 13,
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
