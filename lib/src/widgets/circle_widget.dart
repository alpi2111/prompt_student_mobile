//import 'dart:math';

import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  //final Size screenSize;
  final double rad;
  //final double height;
  //final Random _r = Random();
  final Color color;

  CircleWidget({@required this.rad, this.color});//, @required this.height});

  
  @override
  Widget build(BuildContext context) {
    //int wi = _r.nextInt();
    //int he = _r.nextInt(height.toInt());
    /* int rad = _r.nextInt(this.width.toInt() - 250);
    print(rad);
    if(rad < 30) {
      rad = 80;
    } */
    return Container(
      height: rad,
      width: rad,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(rad),
        color: color
      ),
    );
  }
}
