import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/edu_ui.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_screen_data.dart';
class ServiceHomePage extends StatelessWidget {
  const ServiceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return 

            SingleChildScrollView(
              child: SizedBox(
                height: 400,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: BookServiceDataList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            height: 
                             MediaQuery.of(context).size.height / 5,
                            width: 
                             MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 241, 245, 241),
                                borderRadius: BorderRadius.circular(19)),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => MyList(
                                            )));
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 27,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        BookServiceDataList[index]['imagepath']),
                                    height:
                                       MediaQuery.of(context).size.height / 9,
                                    width:
                                       MediaQuery.of(context).size.width / 4,
                                  ),
                                  Text(
                                    BookServiceDataList[index]['name'],
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
            


    );
  }
}