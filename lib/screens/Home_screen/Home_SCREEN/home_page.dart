import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_screen_data.dart';
import 'package:krishighar/screens/Product_Screen/Seeds.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 208, 208),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              _buildBannerRow(),
              SizedBox(height: 11.0),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 15, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 168, 168),
                    borderRadius: BorderRadius.circular(10),
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
              SizedBox(height: 38.0),
              SizedBox(
                height: 380,
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
                            height: 90,
                            width: 92,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 245, 241),
                              borderRadius: BorderRadius.circular(19),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 187, 186, 186)
                                      .withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SeedsScreen(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Image(
                                    image: AssetImage(
                                        HomeDataList[index]['imagepath']),
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text(
                                    HomeDataList[index]['name'],
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                      color: Colors.green,
                                    ),
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
            ],
          ),
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
