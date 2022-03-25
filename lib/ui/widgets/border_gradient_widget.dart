import 'package:flutter/material.dart';

class BorderGradient extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color childBackColor;
  final double borderWidth;
  final Widget child;
  final double borderRadius;

  const BorderGradient(
      {Key? key,
      required this.child,
      required this.childBackColor,
      required this.color2,
      required this.color1,
      required this.borderWidth,
      required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(
          color: childBackColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
