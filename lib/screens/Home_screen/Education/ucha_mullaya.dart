import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Education/Education.dart';

class UchhaMulya extends StatelessWidget {
  const UchhaMulya({super.key, required this.currentpage});
  final int currentpage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 12.5,
                width: double.maxFinite,
                color: Colors.green,
                child:Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new)),
                     Center(
                    child: Text(
                  "कृषि तथा पसुपंछी सम्बन्धि आधारभूत जानकारी ",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      color: Colors.white),
                )),
                  ],
                )
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  Uchha[currentpage]['nam'],
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "परिचय ",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.08,
                      decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "परिचय ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 250, 10, 10),
            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width / 1.08,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                        Uchha[currentpage]['description'],
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
