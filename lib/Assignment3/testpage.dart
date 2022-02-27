import 'package:assignments/Assignment3/testdetails.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
      bool check = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: TestDetails(),
            ),
            Container(
              width: double.infinity,
              height: 110,
              color: Colors.white,
              child: Column(
                children: [
                 Row(
                   children: [
                     Checkbox(value: check, onChanged: (value){
                       if(check==false)
                       {
                         setState(() {
                           check = true;
                         });
                       }
                       else{
                         setState(() {
                           check = false;
                         });
                       }
                     },
                     ),
                     Text("I've read the ", style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w400
                     ),),
    	                Text("test instructions.", style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w900,
                       decoration: TextDecoration.underline,
                       decorationStyle: TextDecorationStyle.dashed,
                     ),),
                   ],
                 ),
                 SizedBox(
                   width: width/10*9,
                   child: ElevatedButton(onPressed: (){}, child: Text("Start Test", style: TextStyle(
                     color: check==false?Color(0xffadc0cd):Colors.white,
                   ),), style: ButtonStyle(
                     backgroundColor: check==false?MaterialStateProperty.all(Color(0xffdde6ed)):MaterialStateProperty.all(Color(0xff2596E0)),
                   ),),
                 ) 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
