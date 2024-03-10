import 'package:flutter/material.dart';

class SelfParking extends StatefulWidget {
  const SelfParking({super.key});

  @override
  State<SelfParking> createState() => _SelfParkingState();
}

class _SelfParkingState extends State<SelfParking> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300)),
        height: size.height / 3.9,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Self Parking",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: _selected
                                    ? Colors.black
                                    : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "T1",
                                style: TextStyle(
                                    color: !_selected
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: !_selected
                                    ? Colors.black
                                    : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "T2",
                                style: TextStyle(
                                    color: _selected
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              _selected ? _buildT1Ui(size) : Container()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildT1Ui(Size size) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.motorcycle_sharp),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Two wheeler",
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            width: size.width / 4.8,
          ),
          const Text(" AED 50/ day"),
          const Icon(
            Icons.info_outline,
            color: Colors.grey,
            size: 14,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/icons/car.png',
              height: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Car Parking",
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            width: size.width / 4.8,
          ),
          const Text(" AED 100/ day"),
          const Icon(
            Icons.info_outline,
            color: Colors.grey,
            size: 14,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/icons/ecar.png',
              height: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Electric Car Parking",
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            width: size.width / 13,
          ),
          const Text(" AED 100/ day"),
          const Icon(
            Icons.info_outline,
            color: Colors.grey,
            size: 14,
          )
        ],
      )
    ],
  );
}
