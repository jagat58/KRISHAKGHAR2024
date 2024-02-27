import 'package:flutter/material.dart';
import 'package:krishighar/screens/Product_Screen/Seeds.dart';

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
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
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

          return GestureDetector(
            onTap: () {
              // Navigate to the corresponding screen based on the product category
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SeedsScreen()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HardwareScreen()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChemicalScreen()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrganicScreen()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TechScreen()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AgrochemicalScreen()),
                  );
                  break;
                default:
                  break;
              }
            },
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}

class SeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seed'),
      ),
      body: Center(
        child: Text('Seed Screen'),
      ),
    );
  }
}

class HardwareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hardware'),
      ),
      body: Center(
        child: Text('Hardware Screen'),
      ),
    );
  }
}

class ChemicalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemical'),
      ),
      body: Center(
        child: Text('Chemical Screen'),
      ),
    );
  }
}

class OrganicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organic'),
      ),
      body: Center(
        child: Text('Organic Screen'),
      ),
    );
  }
}

class TechScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech'),
      ),
      body: Center(
        child: Text('Tech Screen'),
      ),
    );
  }
}

class AgrochemicalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agrochemical'),
      ),
      body: Center(
        child: Text('Agrochemical Screen'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Product Market')),
      body: BuyProductMarket(),
    ),
  ));
}
