import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/marketdata.dart';
import 'package:krishighar/screens/Product_Screen/Seeds.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1100,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: MarketDataList.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5.3,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 245, 241),
                            borderRadius: BorderRadius.circular(19)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SeedsScreen()));
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image(
                                image: AssetImage(
                                    MarketDataList[index]['imagepath']),
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              Text(
                                MarketDataList[index]['name'],
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.023,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ]));
  }
}
