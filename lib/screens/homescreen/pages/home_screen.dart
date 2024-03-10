import 'package:flightbooking/screens/homescreen/widgets/contact_airport.dart';
import 'package:flightbooking/screens/homescreen/widgets/contact_section.dart';
import 'package:flightbooking/screens/homescreen/widgets/country_info.dart';
import 'package:flightbooking/screens/homescreen/widgets/dashboard.dart';
import 'package:flightbooking/screens/homescreen/widgets/foreign_exchange.dart';
import 'package:flightbooking/screens/homescreen/widgets/horizontaol_tab.dart';
import 'package:flightbooking/screens/homescreen/widgets/public_transport.dart';
import 'package:flightbooking/screens/homescreen/widgets/self_parking.dart';
import 'package:flightbooking/screens/homescreen/widgets/terminal_map.dart';
import 'package:flutter/material.dart';

import '../../flightOperations/pages/flightOperations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            // country section
            const CountrySection(),
            // Dashboard or services tab section
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => FlightOperations()));
                },
                child: const DashBoard()),
            // Horizonatal Tab bar
            const SizedBox(
              height: 20,
            ),
            const HorizontalTab(),
            //  public transport section
            const PublicTrasnport(),
            // self parking
            const SelfParking(),
            // contact airport
            const TerminalMap(),
            // foreign section
            const ForeignExchange(),
            // contact airport
            const ContactAirport(),
            // contact section
            const ContactSection(),

            // terminal map section
          ],
        ),
      ),
    );
  }
}
