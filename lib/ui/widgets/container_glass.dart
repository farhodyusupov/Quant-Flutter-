import 'dart:ui';

import 'package:flutter/material.dart';

import 'glassMorphism.dart';

class ContainerGlass extends StatelessWidget {
  final String img;
  final String title;
  final double borderRadius;
  final Color color;
  final Widget child;

  const ContainerGlass(
      {Key? key,
      required this.img,
      required this.title,
      required this.borderRadius,
      required this.color,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          alignment: Alignment.center,
          width: size.width*0.9 ,

          margin: EdgeInsets.all(7),
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white.withOpacity(0.1),
              border:
              Border.all(color: Colors.white.withOpacity(0.1), width: 1)),
          child: child,
        ),
      ),
    );
  }
}
