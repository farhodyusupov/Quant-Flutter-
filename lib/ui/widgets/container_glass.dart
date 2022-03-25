import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'glassMorphism.dart';

class ContainerGlass extends StatelessWidget {
  final String img;
  final String title;
  final double borderRadius;
  final Color color;
  final String text;

  const ContainerGlass(
      {Key? key,
      required this.img,
      required this.title,
      required this.borderRadius,
      required this.color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          width: size.width * 0.9,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white.withOpacity(0.3),
              border:
                  Border.all(color: Colors.white.withOpacity(0.1), width: 1)),
          child: Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: size.width * 0.15,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                          color: Colors.white.withOpacity(0.1), width: 1),
                    ),

                    borderRadius: BorderRadius.circular(borderRadius),
                    color: Colors.white.withOpacity(0.3),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.09), blurRadius: 10, spreadRadius: 1),
                        BoxShadow(color: Colors.white.withOpacity(0.3), blurRadius: 10, spreadRadius: 1),
                      ]
                  ),
                  child: SvgPicture.asset(
                    img,
                    height: 40,
                  )),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
