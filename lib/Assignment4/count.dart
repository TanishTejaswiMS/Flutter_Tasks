import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> position;
  double width = 0;
  double height = 0;
  double fontsize = 0;
  bool animated = false;
  String text = "1";
  int i = 6;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  animation() {
    setState(() {
      controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3),
      );
      position = Tween<Offset>(
        begin: Offset(0.0, 1.5),
        end: Offset(0.0, 0.1),
      ).animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));
    });
    controller.forward();
  }

  anim() {
    if (this.mounted) {
    setState(() {
      fontsize = 0;
      fontsize = 0;
      // anim();
    });
    setState(() {
      if (this.mounted) {
      setState(() {
        if (i > 0) {
          i = i - 1;
        }

        print(i);
        if (this.mounted) {
        setState(() {
          text = i.toString();
          fontsize = 150;
          fontsize = 150;

          Future.delayed(Duration(seconds: 2), () {
            if (this.mounted) {
            setState(() {
              fontsize = 0;
              fontsize = 0;
              
            });
          }
          });
if(i>0){
          Future.delayed(Duration(milliseconds: 2600), () {
            if (this.mounted) {
            setState(() {
              fontsize = 0;
              fontsize = 0;
              anim();
            });
          }
          });
          }
        });
      }
      });
    }
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text(text),
              style: TextStyle(
                color: Colors.blue,
                fontSize: fontsize,
              ),
              duration: Duration(milliseconds: 500),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Start Countdown'),
              onPressed: () {
                if (this.mounted) {
                setState(() {
                  if (this.mounted) {
                  setState(() {
                    print(i);
                    if (this.mounted) {
                    setState(() {
                      text = i.toString();
                      fontsize = 150;
                      fontsize = 150;

                      Future.delayed(Duration(milliseconds: 1000), () {
                        setState(() {
                          fontsize = 0;
                          fontsize = 0;
                          // anim();
                        });
                      });
                      anim();
                    });
                    }
                  });
                }
                });
  }
              },
            ),
            // AnimatedContainer(
            //   alignment: Alignment.center,
            //   width: width,
            //   height: height,
            //   duration: Duration(seconds: 2),
            //   curve: Curves.fastOutSlowIn,
            //   child: Text("5", style: TextStyle(
            //   color: Colors.grey,
            //   fontSize: fontsize,
            //   fontWeight: FontWeight.w700,
            // ),),
            // ),
          ],
        ),
      ),
    );
  }
}
