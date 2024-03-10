import 'package:flutter/material.dart';

class MyFlightSection extends StatelessWidget {
  const MyFlightSection({super.key});

  void showFlightTabs(BuildContext context, Size size) {
    showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: const AlignmentDirectional(-3.9, -0.34),
          backgroundColor: Colors.transparent,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height / 10,
              width: size.width / 20,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.person_sharp),
                        const SizedBox(width: 10),
                        const Text(
                          "My flights",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: size.width / 5,
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ],
                    ),
                    Divider(
                      indent: 2,
                      endIndent: 2,
                      color: Colors.grey.shade200,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.people_outline_sharp),
                        SizedBox(width: 10),
                        Text("Friend's flights"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const Text(
            'My Flights',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
          ),
          SizedBox(
            width: size.width / 30,
          ),
          GestureDetector(
            onTap: () {
              showFlightTabs(context, size);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  "assets/icons/downarrow.png",
                  height: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 3,
          ),
          Image.asset(
            "assets/icons/search.png",
            height: 20,
          ),
          SizedBox(
            width: size.width / 10,
          ),
          Image.asset(
            "assets/icons/add.png",
            height: 20,
          )
        ],
      ),
    );
  }
}
