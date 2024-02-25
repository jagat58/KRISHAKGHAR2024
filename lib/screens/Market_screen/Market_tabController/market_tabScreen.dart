import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/makket_sell_screen/market_sell_screen.dart';
import 'package:krishighar/screens/Market_screen/market_buy_all_screen/market_buy_all_screen.dart';

class MarketTabContainerScreen extends StatefulWidget {
  @override
  _MarketTabContainerScreenState createState() =>
      _MarketTabContainerScreenState();
}

class _MarketTabContainerScreenState extends State<MarketTabContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 245, 241),
          body: Column(
            children: [
              _buildHead(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TabBarView(
                    children: [
                      BuyProductMarket(),
                      //  MarketScreen(),
                      MarketSellForm(),
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
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 2, 141, 7),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 18, 8, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Text(
                              "Market",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: Text(
                              "Screen",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
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
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                      child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 25,
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 171, 32),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TabBar(
                  unselectedLabelColor:
                      const Color.fromARGB(255, 255, 255, 255),
                  labelColor: Color.fromARGB(221, 0, 0, 0),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: [
                    Tab(
                      text: "        Buy Product       ",
                    ),
                    Tab(text: "        Sell Product      "),
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
