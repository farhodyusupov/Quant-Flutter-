import 'package:flutter/material.dart';


List<ThemeData> themeList = [
  QuantThemes.childCare,
  QuantThemes.flyingLemon,
  QuantThemes.blueTheme,
  QuantThemes.purpleTheme
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

  static final blueTheme = ThemeData(
    backgroundColor: Color(0xff05A9CA),
    scaffoldBackgroundColor: Color(0xff05A9CA)
  );

  static final purpleTheme = ThemeData(
    backgroundColor: Color(0xffC5B2FF),
    scaffoldBackgroundColor: Color(0xffC5B2FF)
  );


}




