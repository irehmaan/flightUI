import 'package:flightbooking/screens/homescreen/pages/home_screen.dart';
import 'package:flightbooking/theme/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/// How the code is structured
///  commons => containe widgets that are used in many places
/// screens => contains folder which further contains into two separate folders
///            respective screen folder alongwith widgets folder corresponding to 
///            that particular screens
/// theme => some config for the system wide app


///  NOTE: The code can be further optimized more, such as reducing the usage of repeated widgets.
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lighTheme,
      home: const HomeScreen(),
    );
  }
}
