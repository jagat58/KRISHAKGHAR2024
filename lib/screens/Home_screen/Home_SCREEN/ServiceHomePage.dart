import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/edu_ui.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_screen_data.dart';

import '../../Market_screen/product/Agro_chemical.dart';
import '../../Market_screen/product/Counsulting.dart';
import '../../Market_screen/product/Insecticide.dart';
import '../../Market_screen/product/Nutrition.dart';
import '../../Market_screen/product/Organicfertilizer.dart';
import '../../Market_screen/product/hardware.dart';
import '../../Market_screen/product/seeds.dart';
class ServiceHomePage extends StatelessWidget {
  const ServiceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return 

           SingleChildScrollView(
                child: SizedBox(
                  height: 320,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: BookServiceDataList.length,
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
                                            builder: (_) => MyList(
                                            ))
                                      );
                                      break;
                                    case 1:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Counsulting()),
                                      );
                                      break;
                                    case 2:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => MyList(
                                            )),
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
                                          BookServiceDataList[index]['imagepath']),
                                      height: 50,
                                      width: 50,
                                    ),
                                    Text(
                                      BookServiceDataList[index]['name'],
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
              );
          
        
        
  }
}