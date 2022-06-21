import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get DarkTheme {
    return ThemeData(
        primaryColor: Color.fromARGB(255, 170, 42, 255),
        secondaryHeaderColor: Color.fromARGB(255, 135, 9, 219),
        scaffoldBackgroundColor: Color.fromARGB(255, 44, 44, 44),
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 40,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
            color: Color.fromARGB(255, 170, 42, 255),
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          headline5: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          headline6: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Color.fromARGB(255, 170, 42, 255),
        ));
  }
}
