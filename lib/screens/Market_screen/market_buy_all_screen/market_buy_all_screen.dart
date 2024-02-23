import 'package:flutter/material.dart';

class BuyProductMarket extends StatelessWidget {
  final List<String> productNames = [
    'Seed',
    'Hardware',
    'Chemical',
    'Organic',
    'Tech',
    'Agrochemical',
  ];

  final List<String> imagePaths = [
    'assets/seed.jpeg',
    'assets/hardware.jpeg',
    'assets/chemical.jpeg',
    'assets/organic.jpeg',
    'assets/tech.jpeg',
    'assets/agroche.jpeg',
  ];

  BuyProductMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     
      Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11.0,
            mainAxisSpacing: 18.0,
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            String assetImagePath = imagePaths[index];
            String productName = productNames[index];

            return Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    assetImagePath,
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Color.fromARGB(255, 17, 115, 0).withOpacity(0.7),
                      child: Center(
                        child: Text(
                          productName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    
  }
}