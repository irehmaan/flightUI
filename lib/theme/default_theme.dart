import 'package:flutter/material.dart';

ThemeData lighTheme = ThemeData(
    useMaterial3: true,
    // splashColor: Colors.blue,
    navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Colors.blue,
        labelTextStyle:
            MaterialStatePropertyAll(TextStyle(color: Colors.black))),
    colorScheme: const ColorScheme.dark(primary: Colors.white),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black)),
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),

    // ignore: prefer_const_constructors
    listTileTheme: ListTileThemeData(
      subtitleTextStyle: const TextStyle(color: Colors.black),
      textColor: Colors.black,
      iconColor: Colors.black,
      titleTextStyle: const TextStyle(color: Colors.black),
      tileColor: Colors.grey.shade700,
    ),
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.transparent),
    sliderTheme: SliderThemeData(
        thumbShape: SliderComponentShape.noThumb,
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.black),
    textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.black),
        headlineMedium: TextStyle(color: Colors.black),
        headlineSmall: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleSmall: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: Colors.black),
        displaySmall: TextStyle(color: Colors.black),
        displayLarge: TextStyle(color: Colors.black),
        labelLarge: TextStyle(color: Colors.black),
        labelMedium: TextStyle(color: Colors.black),
        labelSmall: TextStyle(color: Colors.black),
        displayMedium: TextStyle(color: Colors.black)));
