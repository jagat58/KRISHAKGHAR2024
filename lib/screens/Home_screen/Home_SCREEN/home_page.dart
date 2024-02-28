import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/Education.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_screen_data.dart';
import 'package:krishighar/screens/Market_screen/product/Agro_chemical.dart';
import 'package:krishighar/screens/Market_screen/product/Nutrition.dart';
import 'package:krishighar/screens/Market_screen/product/hardware.dart';
import 'package:krishighar/screens/Market_screen/product/seeds.dart';

import '../../../Widgets/banner_widgets.dart';
import '../../../Widgets/seed_widgrts.dart';
import '../../Market_screen/product/Insecticide.dart';
import '../../Market_screen/product/Organicfertilizer.dart';

class HomeScreenn extends StatefulWidget {
  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  int _currentIndex = 0;
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
              BannerWidget(),
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
              SizedBox(height: 15.0),
              SingleChildScrollView(
                child: SizedBox(
                  height: 320,
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
                                    offset: Offset(
                                      5,
                                      5,
                                    ), // changes position of shadow
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
                                            builder: (_) => SeedsScreen()),
                                      );
                                      break;
                                    case 1:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Nutrition()),
                                      );
                                      break;
                                    case 2:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Hardware()),
                                      );
                                      break;
                                    case 3:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Agrochemical()),
                                      );
                                      break;
                                    case 4:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => OrganicFertilizer()),
                                      );
                                      break;
                                    case 5:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Insecticide()),
                                      );
                                      break;
                                    case 6:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>SeedsScreen()),
                                      );
                                      break;
                                    case 7:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Nutrition()),
                                      );
                                      break;
                                    case 8:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>SeedsScreen()),
                                      );
                                      break;

                                    default:
                                      break;
                                  }
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
