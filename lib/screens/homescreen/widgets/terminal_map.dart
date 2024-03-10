// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TerminalMap extends StatefulWidget {
  const TerminalMap({super.key});

  @override
  State<TerminalMap> createState() => _TerminalMapState();
}

class _TerminalMapState extends State<TerminalMap>
    with TickerProviderStateMixin {
  late TabController tabController =
      TabController(animationDuration: Duration.zero, length: 3, vsync: this);
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 4.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Terminal map",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: size.width / 2.7,
                child: TabBar(
                  indicatorWeight: 0,
                  splashFactory: NoSplash.splashFactory,
                  labelPadding: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.transparent,
                  dividerHeight: 0,
                  labelStyle: const TextStyle(fontSize: 11),
                  indicator: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  controller: tabController,
                  unselectedLabelColor: Colors.grey.shade200,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: _selectedIndex == 0
                                ? Colors.black
                                : Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                              child: Text(
                            "T1",
                            style: TextStyle(
                                fontSize: 15,
                                color: _selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: _selectedIndex == 1
                                ? Colors.black
                                : Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                              child: Text(
                            "T2",
                            style: TextStyle(
                                fontSize: 15,
                                color: _selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: _selectedIndex == 2
                                ? Colors.black
                                : Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                              child: Text(
                            "T3",
                            style: TextStyle(
                                fontSize: 15,
                                color: _selectedIndex == 2
                                    ? Colors.white
                                    : Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _selectedIndex,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              child: Image.asset(
                                'assets/icons/airport.png',
                                height: 100,
                              )),
                          Positioned(
                              top: size.height / 24,
                              left: size.width / 3.3,
                              child: SizedBox(
                                height: 29,
                                width: 50,
                                child: TextButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black)),
                                    onPressed: () {},
                                    child: Text(
                                      "View",
                                      style: TextStyle(fontSize: 9),
                                    )),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const Center(
                    child: Text('Tab 3 Content'),
                  ),
                  const Center(
                    child: Text('Tab 4 Content'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
