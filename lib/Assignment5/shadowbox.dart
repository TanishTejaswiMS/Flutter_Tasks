import 'package:flutter/material.dart';

class ShadowBox extends StatefulWidget {
  const ShadowBox({ Key? key }) : super(key: key);

  @override
  State<ShadowBox> createState() => _ShadowBoxState();
}

class _ShadowBoxState extends State<ShadowBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Material(
          elevation: 5,
          child: Container(
            width: 100,
            height: 100,
          ),
        ),

        Material(
          elevation: 5,
          child: Container(
            width: 100,
            height: 90,
          ),
        ),

        Material(
          elevation: 5,
          child: Container(
            width: 100,
            height: 80,
          ),
        ),
      ],
    );
  }
}