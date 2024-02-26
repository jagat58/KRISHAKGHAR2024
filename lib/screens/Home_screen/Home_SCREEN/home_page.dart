import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/Education.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_screen_data.dart';
import 'package:krishighar/screens/Market_screen/product/seeds.dart';

class HomeScreenn extends StatefulWidget {
  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  int _currentIndex = 0;
  List<String> _bannerImages = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg'
  ];

  @override
  void initState() {
    super.initState();

    // Timer.periodic(Duration(seconds: 150), (timer) {
    //   setState(() {
    //     _currentIndex = (_currentIndex + 1) % _bannerImages.length;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 245, 241),
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 8.0),
            _buildBannerRow(),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      255, 227, 227, 227), // Background color of the rectangle
                  borderRadius: BorderRadius.circular(
                      10), // Adjust the corner radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:2.0),
            SingleChildScrollView(
              child: SizedBox(
                height:320,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: HomeDataList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 245, 241),
                              borderRadius: BorderRadius.circular(19),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 187, 186, 186)
                                      .withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(
                                      5, 5), // changes position of shadow
                                ),
                              ],
                            ),

                            child: InkWell(
                              onTap: () {
                                
                                switch (index) {
                                  case 0:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const Seeds()
                                      ),
                                    );
                                    break;
                                  // case 1:
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (_) => DetailsPart(
                                  //         currentpage: index,
                                  //       ),
                                  //     ),
                                  //   );
                                    // break;
                                  // Add more cases as needed for additional screens
                                  default:
                                    // Handle invalid index or do nothing
                                    break;
                                }
                              
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (_) => ListPart(
                                //               currentpage: index,
                                //             )));
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        HomeDataList[index]['imagepath']),
                                    height: 50,
                                    // MediaQuery.of(context).size.height / 9,
                                    width: 50,
                                    //  MediaQuery.of(context).size.width / 4,
                                  ),
                                  Text(
                                    HomeDataList[index]['name'],
                                    style: TextStyle(
                                        fontSize: 11,
                                        // MediaQuery.of(context).size.height *
                                        //     0.023,
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

            // Expanded(
            //   // child: CategoryGrid(
            //   //   categoryNames: [
            //   //     "Seeds",
            //   //     "Nutrition",
            //   //     "Hardware",
            //   //     "Agrochemical",
            //   //     "organicfertilizer",
            //   //     "Education",
            //   //   ],

            //   // ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerRow() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBannerImage(_bannerImages[_currentIndex]),
            SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerImage(String imagePath) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Image.asset(
        imagePath,
        height: 81.0,
        width: 306.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
