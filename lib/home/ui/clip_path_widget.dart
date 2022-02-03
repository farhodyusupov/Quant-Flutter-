import 'package:flutter/cupertino.dart';

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height/18);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 18);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    // var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    // var secondPoint = Offset(size.width, size.height - 30);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondPoint.dx, secondPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
