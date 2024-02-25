import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Seeds',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount(context),
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 40.0,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            // Example product data
            List<String> productNames = [
              'Sunflower Seeds',
              'Pumpkin Seeds',
              'Chia Seeds',
              'Flax Seeds',
              'Sesame Seeds',
              'Hemp Seeds',
              'Poppy Seeds',
              'Quinoa Seeds',
              'Safflower Seeds',
              'Watermelon Seeds'
            ];
            List<String> imageUrls = [
              'https://images.pexels.com/photos/18592820/pexels-photo-18592820/free-photo-of-a-sunflower-in-a-field-with-a-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ];

            double rating = 4.5;

            return _buildGridItem(
              context, // Pass BuildContext
              productName: productNames[index % productNames.length],
              imageUrl: imageUrls[index % imageUrls.length],
              price: 'Rs. 20',
              rating: rating,
            );
          },
        ),
      ),
    );
  }

  int _crossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int count = (screenWidth / 200).floor();
    return count > 0 ? count : 1;
  }

  Widget _buildGridItem(BuildContext context,
      {required String productName,
      required String imageUrl,
      required String price,
      required double rating}) {
    return GridTile(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(3, 6),
                ),
              ],
            ),
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  productName,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.18,
            left: MediaQuery.of(context).size.width * 0.04,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(251, 14, 203, 17),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SeedsScreen(),
  ));
}
