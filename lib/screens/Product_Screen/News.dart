import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 208, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 105, 27),
        title: Center(
          child: Text(
            'News',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
    );
  }
}
