import 'package:flutter/material.dart';


List<ThemeData> themeList = [
  QuantThemes.childCare,
  QuantThemes.flyingLemon,
];

class QuantThemes{

  static final childCare = ThemeData(
      backgroundColor: Color(0xffFFB2BF),
    scaffoldBackgroundColor: Color(0xffFFB2BF)
  );

  static final flyingLemon = ThemeData(
    backgroundColor: Color(0xff537895),
    scaffoldBackgroundColor: Color(0xff537895)
  );



}




