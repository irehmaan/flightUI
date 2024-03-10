import 'package:flutter/material.dart';

/// This could be made more better to redue the code reptition
/// There are rep
class HorizontalTab extends StatefulWidget {
  const HorizontalTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HorizontalTabState createState() => _HorizontalTabState();
}

class _HorizontalTabState extends State<HorizontalTab>
    with TickerProviderStateMixin {
  late TabController tabController =
      TabController(animationDuration: Duration.zero, length: 4, vsync: this);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: const BoxDecoration(color: Colors.transparent),
      height: size.height / 2.6,
      child: Column(
        children: [
          SizedBox(
            height: size.height / 24,
            child: TabBar(
              indicatorWeight: 1,
              splashFactory: NoSplash.splashFactory,
              labelPadding: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              dividerHeight: 0,
              labelStyle: const TextStyle(fontSize: 11),
              indicator: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              controller: tabController,
              unselectedLabelColor: Colors.grey.shade300,
              tabs: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _selectedIndex == 0
                          ? Colors.black
                          : Colors.grey.shade300),
                  child: Center(
                      child: Text(
                    "Transport",
                    style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Colors.white : Colors.black),
                  )),
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _selectedIndex == 1
                          ? Colors.black
                          : Colors.grey.shade300),
                  child: Center(
                      child: Text(
                    "Terminal",
                    style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Colors.white : Colors.black),
                  )),
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _selectedIndex == 2
                          ? Colors.black
                          : Colors.grey.shade300),
                  child: Center(
                      child: Text(
                    "Forex",
                    style: TextStyle(
                        color:
                            _selectedIndex == 2 ? Colors.white : Colors.black),
                  )),
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _selectedIndex == 3
                          ? Colors.black
                          : Colors.grey.shade300),
                  child: Center(
                      child: Text(
                    "Contact info",
                    style: TextStyle(
                        color:
                            _selectedIndex == 3 ? Colors.white : Colors.black),
                  )),
                ),
              ],
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // the section responsible for displaying different tabs
          buildTabs(_selectedIndex),
        ],
      ),
    );
  }
}

Widget buildTabs(int selecteIndex) {
  return Expanded(
    child: IndexedStack(
      index: selecteIndex,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Taxi Service',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      Container(
                        height: 80,
                        width: 90,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/taxi/uber.png',
                                height: 50,
                              ),
                              const Text(
                                " \$ \$ \$ \$ ",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/taxi/careem.png',
                                height: 50,
                              ),
                              const Text(
                                " \$ \$ \$ \$ ",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/taxi/yango.png',
                                height: 50,
                              ),
                              const Text(
                                " \$ \$ \$ \$ ",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 90,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/taxi/blacklane.png',
                                height: 40,
                              ),
                              const Text(
                                " \$ \$ \$ \$ ",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const Center(
          child: Text('Tab 2 Content'),
        ),
        const Center(
          child: Text('Tab 3 Content'),
        ),
        const Center(
          child: Text('Tab 4 Content'),
        ),
      ],
    ),
  );
}
