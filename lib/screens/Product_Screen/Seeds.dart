import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/product/product_detail_screen.dart';

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
              'Peas Seeds',
              'Pumpkin Seeds',
              'Lemon Seeds',
              'Tomato Seeds',
              'Sesame Seeds',
              'Flex Seeds',
              'Poppy Seeds',
              'Almond Seeds',
              'Watermelon Seeds',
              'Cucumber Seeds'
            ];
            List<String> imageUrls = [
              'https://images.pexels.com/photos/255469/pexels-photo-255469.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'https://images.pexels.com/photos/7772003/pexels-photo-7772003.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'https://i0.wp.com/practicalselfreliance.com/wp-content/uploads/2019/05/Citrus-Seed-Pectin-2.jpg?resize=600%2C400&ssl=1',
              'https://plantura.garden/uk/wp-content/uploads/sites/2/2021/04/save-own-tomato-seeds.jpg',
              'https://cdn.britannica.com/66/212766-050-FF1A49A0/sesame-seeds-wooden-spoon.jpg',
              'https://files.nccih.nih.gov/flaxseed-steven-foster-square.jpg',
              'https://upload.wikimedia.org/wikipedia/commons/6/69/Poppy_seeds.jpg',
              'https://www.liveeatlearn.com/wp-content/uploads/2023/06/How-to-Make-Almond-Butter-01-768x1152.jpg',
              'https://www.pureindianfoods.com/cdn/shop/products/watermelonseeds.jpg?v=1654623730&width=500',
              'https://i0.wp.com/plantcraft.in/wp-content/uploads/2020/12/CucumberSeeds.jpg?fit=500%2C375&ssl=1'
            ];
            [
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Peas_in_pods_-_Studio.jpg/1024px-Peas_in_pods_-_Studio.jpg'
            ];
            double rating = 4.5;

            return _buildGridItem(
              context,
              productName: productNames[index % productNames.length],
              imageUrl: imageUrls[index % imageUrls.length],
              price: 'Rs. 20',
              rating: rating,
              index: index,
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
      required double rating,
      required int index}) {
    return GestureDetector(
      onTap: () {
        // Navigate to different pages based on the index of the item
        switch (index % 3) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                    productName: productName,
                    imageUrls: [imageUrl],
                    productPrice: price,
                    rating: rating),
              ),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnotherPage(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => YetAnotherPage(),
              ),
            );
            break;
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: GridTile(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 92, 92, 92)
                          .withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 2),
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('This is another page.'),
      ),
    );
  }
}

class YetAnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yet Another Page'),
      ),
      body: Center(
        child: Text('This is yet another page.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SeedsScreen(),
  ));
}
