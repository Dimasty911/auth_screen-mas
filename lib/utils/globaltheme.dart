
import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Times New Roman',
  splashColor: Colors.green,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.teal,
  ).copyWith(
    secondary: Colors.grey,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 18.0, color: Colors.black45, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
  ),
);