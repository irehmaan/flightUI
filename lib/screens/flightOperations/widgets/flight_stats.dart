// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FlightStats extends StatelessWidget {
  const FlightStats({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset('assets/images/gmap.png'),
        Positioned(
            top: size.width / 9,
            left: size.width / 10,
            right: size.width / 10,
            bottom: size.height / 8,
            child: Container(
              // width: size.width / 1.3,
              // height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(-3, 3),
                        blurRadius: 4),
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(3, -3),
                        blurRadius: 4)
                  ],
                  color: Colors.white),
              child: CustomPaint(
                painter: MyPainter(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/icons/man.png",
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "Flights",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "04",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Countries",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "06",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "Distance",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "4,287 km",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 30; //<-- corner radius
    double cornerLength = 15; // Adjust this value to control corner length

    Paint blackPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0;

    Paint redPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;

    RRect fullRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h),
      Radius.circular(r),
    );

    Path topLeftCorner = Path()
      ..moveTo(1, cornerLength) // Move to starting point
      ..lineTo(1, 1) // Line to top-left corner
      ..quadraticBezierTo(1, 0.8, cornerLength, 1)
      ..lineTo(cornerLength, 1); // Line to end of corner

    Path bottomRightCorner = Path()
      ..moveTo(w - cornerLength, h) // Move to starting point
      ..lineTo(w - 1, h) // Line to bottom-right corner
      ..lineTo(w - 1, h - cornerLength); // Line to end of corner

    canvas.drawRRect(fullRect, blackPaint);
    canvas.drawPath(topLeftCorner, redPaint);
    canvas.drawPath(bottomRightCorner, redPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
