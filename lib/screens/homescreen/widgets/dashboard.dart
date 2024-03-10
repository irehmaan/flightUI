import 'package:flutter/material.dart';

import '../../../common/info_tile.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: SizedBox(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/uae_night.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Positioned(
          top: size.height / 5.5,
          left: size.width / 25,
          right: size.width / 25,
          bottom: size.height / 70,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: size.height,
              width: size.width / 1.18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InfoTile(
                          iconPath: 'assets/icons/rain.png',
                          data: "19 °C",
                          height: 14,
                          description: "Cloudy"),
                      InfoTile(
                          iconPath: 'assets/icons/calendar.png',
                          height: 14,
                          data: " 30 Jan",
                          description: "Mon"),
                      InfoTile(
                          iconPath: 'assets/icons/clock.png',
                          data: "8:45 PM",
                          height: 14,
                          description: "GMT+4"),
                      InfoTile(
                          iconPath: 'assets/icons/ticket.png',
                          data: "AED",
                          height: 14,
                          description: "1\$ = 3.67AED"),
                    ],
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey.shade200,
                    indent: 10,
                    endIndent: 10,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.directions,
                          size: 20,
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        "Get direction",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 25,
                          width: 1,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade100),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.blue,
                        ),
                      ),
                      const Text("Call airport",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
