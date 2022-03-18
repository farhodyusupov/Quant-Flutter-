import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;
  final double borderRadius;
  final double margin;
  final double padding;
  const GlassMorphism(
      {Key? key,
      required this.opacity,
      required this.child,
      required this.blur,
      required this.borderRadius,
      required this.margin,
        required this.padding
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: blur, sigmaX: blur),
          child: Container(
            padding: EdgeInsets.all( padding),
            margin: EdgeInsets.all(margin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: Colors.white.withOpacity(opacity),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 1)),
            child: child,
          ),
        ),
      ),
    );
  }
}
