import 'package:flutter/material.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
          children: [
           
            Padding(
              padding: const EdgeInsets.fromLTRB(10,80, 10, 10),
              child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(10, (index) {
              return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: EdgeInsets.all(12.0),
                color: Color.fromARGB(255, 255, 255, 255),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 24,
                  height: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 24,
                        height: 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 135, 131, 131),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            'https://www.adb.org/sites/default/files/styles/content_media/public/content-media/172041-gansu-leading-agriculture-enterprise.jpeg?itok=ecTRbiNK',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Headline $index', 
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          '14 Falgun', 
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 116, 116, 116),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
                        }),
                      ),
                    ),
            ),
       Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 2, 141, 7),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/logo.png'),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 8, 8, 8),
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
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // Example color for notification icon
                ),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
       ])
    );
  }
}