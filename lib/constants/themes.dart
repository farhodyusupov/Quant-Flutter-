import 'package:flutter/material.dart';

List<ThemeData> themeList = [
  QuantThemes.childCare,
  QuantThemes.flyingLemon,
  QuantThemes.blueTheme,
  QuantThemes.purpleTheme
];

class QuantThemes {
  static final childCare = ThemeData(
    backgroundColor: Color(0xffFFB2BF),
    scaffoldBackgroundColor: Color(0xffFFB2BF),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.black),
      subtitle2: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
    ),
  );

  static final flyingLemon = ThemeData(
    backgroundColor: Color(0xff537895),
    scaffoldBackgroundColor: Color(0xff537895),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      subtitle2: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.red),
      headline5: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.cyan),
    ),
  );

  static final blueTheme = ThemeData(
    backgroundColor: Color(0xff05A9CA),
    scaffoldBackgroundColor: Color(0xff05A9CA),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      subtitle2: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.red),
      headline5: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.cyan),
    ),
  );

  static final purpleTheme = ThemeData(
      backgroundColor: Color(0xffC5B2FF),
      scaffoldBackgroundColor: Color(0xffC5B2FF),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      subtitle2: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.red),
      headline5: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.cyan),
    ),
  );
}
