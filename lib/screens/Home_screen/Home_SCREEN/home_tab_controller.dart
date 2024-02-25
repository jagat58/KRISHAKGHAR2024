import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/ServiceHomePage.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_page.dart';

class HomeTabContainerScreen extends StatefulWidget {
  @override
  _HomeTabContainerScreenState createState() => _HomeTabContainerScreenState();
}

class _HomeTabContainerScreenState extends State<HomeTabContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 208, 208, 208),
          body: Column(
            children: [
              _buildHead(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TabBarView(
                    children: [
                      HomeScreenn(),
                      ServiceHomePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHead() {
    return Container(
      color: Color.fromARGB(255, 2, 141, 7),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 2, 141, 7),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 8, 8, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Text(
                              "KRISHAK",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: Text(
                              "GHAR",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                      child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.84,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 171, 32),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black87,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: [
                    Tab(
                      text: "        Buy Product       ",
                    ),
                    Tab(text: "        Book Service      "),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
