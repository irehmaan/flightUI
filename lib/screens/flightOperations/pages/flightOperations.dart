// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flightbooking/screens/flightOperations/widgets/advanced_ticket.dart';
import 'package:flightbooking/screens/flightOperations/widgets/current_ticket.dart';
import 'package:flightbooking/screens/flightOperations/widgets/flight_stats.dart';
import 'package:flightbooking/screens/flightOperations/widgets/my_flight_section.dart';
import 'package:flightbooking/screens/flightOperations/widgets/share_flight.dart';
import 'package:flightbooking/screens/flightOperations/widgets/timing_status.dart';
import 'package:flutter/material.dart';

class FlightOperations extends StatelessWidget {
  FlightOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // flight map
            FlightStats(),

            // my flights section
            MyFlightSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 110,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Unsorted(12)",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            // ticket section

            CurrentTicket(),
            // time status
            TimingStatus(),
            // share flight
            ShareFlight(),
            // advanced ticket

            AdvancedTicket(),
          ],
        ),
      ),
    );
  }
}
