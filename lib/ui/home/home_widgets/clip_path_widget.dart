import 'package:flutter/cupertino.dart';

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    ///first point(left side border radius)
    path.moveTo(0, 55);
    var controlPoint1 = Offset(5, 20);
    var endPoint1 = Offset(50, 15);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
    path.lineTo(size.width / 2 - 15, 1);

    ///second point(top radius)
    var controlPoint2 = Offset(size.width / 2, 1);
    var endPoint2 = Offset(size.width / 2 + 15, 0);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    ///third point(right side border radius)
    path.lineTo(size.width - 50, 15);
    var controlPoint3 = Offset(size.width - 5, 20);
    var endPoint3 = Offset(size.width, 55);
    path.quadraticBezierTo(
        controlPoint3.dx, controlPoint3.dy, endPoint3.dx, endPoint3.dy);

    /// bottom left corner
    path.lineTo(size.width, size.height-55);
    var controlPoint4 = Offset(size.width-5, size.height-20);
    var endPoint4 = Offset(size.width-50, size.height-15);
    path.quadraticBezierTo(
        controlPoint4.dx, controlPoint4.dy, endPoint4.dx, endPoint4.dy);
    path.lineTo(size.width / 2 , size.height-1);

    /// bottom center



    /// bottom right corner
    path.lineTo(50, size.height-15);
    var controlPoint6 = Offset(5, size.height-15);
    var endPoint6 = Offset(0, size.height-50);
    path.quadraticBezierTo(
        controlPoint6.dx, controlPoint6.dy, endPoint6.dx, endPoint6.dy);
    // path.lineTo(0, 55);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
