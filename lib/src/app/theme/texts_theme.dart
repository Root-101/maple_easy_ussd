import 'package:flutter/material.dart';

/// The theme for all the types of text in the app.
class TextsTheme {
  static TextTheme textTheme = const TextTheme(
    ///////////////////////////////// HEADLINES ////////////////////////////////
    headline1: TextStyle(
      fontSize: 96,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      fontSize: 60,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      fontSize: 48,
      color: Color(0xff13161F),
      height: 1.09,
    ),
    headline4: TextStyle(
      fontSize: 34,
      color: Colors.black,
      height: 1.09,
      letterSpacing: 0.25,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 24,
      color: Color(0xff13161F),
      height: 1.5,
    ),
    headline6: TextStyle(
      fontSize: 20,
      color: Color(0xff13161F),
      height: 1.4,
      letterSpacing: 0.5,
    ),
    ///////////////////////////////// SUBTITLES ////////////////////////////////
    subtitle1: TextStyle(
      fontSize: 16,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: 0.1,
    ),
    ///////////////////////////////// BODYTEXTS ////////////////////////////////
    bodyText1: TextStyle(
      fontSize: 16,
      color: Color(0xff13161F),
      height: 1.6,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      color: Color(0xff13161F),
      height: 1.43,
      letterSpacing: 0.25,
    ),
    /////////////////////////////////// BUTON //////////////////////////////////
    button: TextStyle(
      fontSize: 14,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: 1.25,
    ),
    ///////////////////////////////// CAPTION //////////////////////////////////
    caption: TextStyle(
      fontSize: 12,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: 0.4,
    ),
    ///////////////////////////////// OVERLINE ///////-/////////////////////////
    overline: TextStyle(
      fontSize: 10,
      color: Color(0xff13161F),
      height: 1.09,
      letterSpacing: 1.5,
    ),
  );
}
