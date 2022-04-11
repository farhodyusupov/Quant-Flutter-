import 'package:flutter/material.dart';

List<ThemeData> themeList = [
  QuantThemes.childCare,
  QuantThemes.flyingLemon,
  QuantThemes.blueTheme,
  QuantThemes.purpleTheme
];

class QuantThemes {
  static final childCare = ThemeData(

    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      bodyText1: TextStyle(color: Colors.black,  fontFamily: "Proxima"),
      subtitle2: TextStyle(color: Colors.white,  fontFamily: "Proxima"),
      headline6: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400,  fontFamily: "Proxima"),
      headline5: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Proxima"),
      overline: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline4: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline3: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      caption: TextStyle(color: Colors.white, fontFamily: "Proxima"),
  /* appbar text theme*/
      headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: "Proxima"),
      headline2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      button: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle1: TextStyle(color: Colors.white, fontFamily: "Proxima"),
    ),
  );

  static final flyingLemon = ThemeData(

    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      bodyText1: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline6: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: "Proxima"),
      headline5: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Proxima"),
      overline: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline4: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline3: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      caption: TextStyle(color: Colors.white, fontFamily: "Proxima"),
/* appbar text theme*/
      headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: "Proxima"),
      headline2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      button: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle1: TextStyle(color: Colors.cyan, fontFamily: "Proxima"),
    ),
  );

  static final blueTheme = ThemeData(

    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      bodyText1: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline6: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: "Proxima"),
      headline5: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Proxima"),
      overline: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline4: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline3: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      caption: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      /*appBar text theme*/
      headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: "Proxima"),

      headline2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      button: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle1: TextStyle(color: Colors.cyan, fontFamily: "Proxima"),
    ),
  );

  static final purpleTheme = ThemeData(

    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      bodyText1: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline6: TextStyle(color: Colors.red, fontFamily: "Proxima"),
      headline5: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      overline: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline4: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      headline3: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      caption: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      /*appbar text theme*/
      headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: "Proxima"),

      headline2: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      button: TextStyle(color: Colors.white, fontFamily: "Proxima"),
      subtitle1: TextStyle(color: Colors.cyan, fontFamily: "Proxima"),
    ),
  );
}
