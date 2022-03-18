import 'package:flutter/material.dart';
class BorderRadius extends StatelessWidget {
  final Color color1;
  final Color color2;
  final double borderWidth;
  final Widget child;
  const BorderRadius({Key? key, required this.color1, required this.color2, required this.borderWidth, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderWidth),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1,
                color2
              ]
            ),
          ),
      child: Container(child: child),
    );
  }
}
