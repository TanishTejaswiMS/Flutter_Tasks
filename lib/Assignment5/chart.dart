// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class Graph extends StatefulWidget {
//   const Graph({ Key? key }) : super(key: key);

//   @override
//   State<Graph> createState() => _GraphState();
// }

// class _GraphState extends State<Graph> with SingleTickerProviderStateMixin {
//   late Animation<double> animation;
//   late AnimationController animationController;

  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: CustomPaint(
//         size: Size(300,300),
//         painter: PaintClass(arc, progressColor, isBackground),
//       ),
//     );
//   }
// }



// class PaintClass extends CustomPainter{
//   late bool isBackground;
//   late double arc;
//   late Color progressColor;
//   PaintClass(this.arc,this.progressColor,this.isBackground);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final rect = Rect.fromLTRB(0, 0, 300, 300);
//     final startAngle = -math.pi;
//     final sweepAngle = - arc!=null? arc:math.pi;
//     final useCenter = false;
//     final paint = Paint();
//     ..strokeCap = StrokeCap.round;
//     ..color = progressColor;
//     ..style = PaintingStyle.stroke;
//     ..strokeWidth = 20;

// if(isBackground)
// {

// }
// canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     throw UnimplementedError();
//   }
  
// }