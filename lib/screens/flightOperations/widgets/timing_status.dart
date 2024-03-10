import 'package:flutter/material.dart';

class TimingStatus extends StatelessWidget {
  const TimingStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Boarding closes in 00:30",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "On time",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/house-door.png',
                          height: 20,
                          color: Colors.black,
                        ),
                        const Text(
                          "T20",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
