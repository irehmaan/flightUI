// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ForeignExchange extends StatelessWidget {
  const ForeignExchange({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Foreign Exchange",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            ExpansionTile(
              collapsedBackgroundColor: Colors.white,
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              backgroundColor: Colors.white,
              title: Text(
                "Travelex",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Text(
                            'Terminal 3 \nAirside Dept Downtown Concourse B,\nTerminal 3, beside Winston Smoking room ',
                            style: TextStyle(color: Colors.grey, fontSize: 11)),
                      )
                    ]),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(
                indent: 10,
                endIndent: 10,
                height: 2,
                color: Colors.grey.shade200,
              ),
            ),
            ExpansionTile(
              
              collapsedBackgroundColor: Colors.white,
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              backgroundColor: Colors.white,
              title: Text(
                "Al Ansari Exchange",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                            'Terminal 3 \nAirside Dept Downtown Concourse B,\nTerminal 3, beside Winston Smoking room ',
                            style: TextStyle(color: Colors.grey, fontSize: 11)),
                      )
                    ]),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(
                indent: 10,
                endIndent: 10,
                height: 2,
                color: Colors.grey.shade200,
              ),
            ),
            ExpansionTile(
              collapsedBackgroundColor: Colors.white,
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              backgroundColor: Colors.white,
              title: Text(
                "Emirates NBD",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                        'Terminal 3 \nAirside Dept Downtown Concourse B,\nTerminal 3, beside Winston Smoking room ',
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
