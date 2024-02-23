
import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/Education.dart';
import 'package:krishighar/screens/Home_screen/Education/taekali_bali.dart';
import 'package:krishighar/screens/Home_screen/Education/ucha_mullaya.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 1,
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 12.5,
              width: double.maxFinite,
              color: Colors.green,
              child: Center(
                  child: Text(
                "कृषि सम्बन्धि आधारभूत जानकारी ",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.white),
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 69, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "कृषि सम्बन्धि \nआधारभूत जानकारी",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.027,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "अन्नबाली",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.032),
                      ),
                    ),
                    SizedBox(
                      height: 600,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: dataList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
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
                                              builder: (_) => ListPart(
                                                    currentpage: index,
                                                  )));
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image(
                                          image: AssetImage(
                                              dataList[index]['imagepath']),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                        ),
                                        Text(
                                          dataList[index]['name'],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
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
                    SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "उच्च मूल्य बाली",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.032),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: Uchha.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
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
                                              builder: (_) => UchhaMulya(
                                                    currentpage: index,
                                                  )));
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image(
                                          image: AssetImage(
                                              Uchha[index]['imagepath']),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                        ),
                                        Text(
                                          Uchha[index]['name'],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "तरकारी बाली",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.032),
                      ),
                    ),
                    SizedBox(
                      height: 600,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: tarkari.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
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
                                              builder: (_) => TarkariBari(
                                                    currentpage: index,
                                                  )));
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image(
                                          image: AssetImage(
                                              tarkari[index]['imagepath']),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                        ),
                                        Text(
                                          tarkari[index]['name'],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
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
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
