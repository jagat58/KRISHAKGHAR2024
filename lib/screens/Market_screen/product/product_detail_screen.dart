import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailsScreen(
        productName: 'Product',
        productPrice: '10.00',
      ),
    );
  }
}

class ProductDetailsScreen extends StatefulWidget {
  final String productName;
  final String productPrice;

  const ProductDetailsScreen({
    Key? key,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  void addToCart() {
    CartItem cartItem = CartItem(
      productName: widget.productName,
      productPrice: widget.productPrice,
      quantity: quantity,
    );

    // Add the item to the global cart list
    globalCartItems.add(cartItem);

    // Show a snackbar or navigate to a confirmation screen if needed
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added to cart'),
        duration: Duration(seconds: 2),
      ),
    );

    print("Item added to cart: ${cartItem.productName}");
  }

  Widget _buildQuantitySelector() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (quantity > 1) {
              setState(() {
                quantity--;
              });
            }
          },
          icon: Icon(Icons.remove),
        ),
        Text(
          '$quantity',
          style: TextStyle(fontSize: 18),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the CartScreen when the cart icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  'Image ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.productPrice,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildQuantitySelector(),
                      ElevatedButton(
                        onPressed: addToCart,
                        child: Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          minimumSize: Size(120, 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          tabs: [
                            Tab(text: 'ABOUT'),
                            Tab(text: 'REVIEWS'),
                          ],
                        ),
                        SizedBox(height: 16),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              Text(
                                'Matcha is a blend of fresh and finest cotton seeds, creating a unique and refreshing experience. Enjoy the soothing qualities of green tea with the softness of cotton.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Reviews coming soon...',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Global list to store cart items
List<CartItem> globalCartItems = [];

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Building CartScreen");

    // Print the number of items in the cart
    print("Number of Cart Items: ${globalCartItems.length}");

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: globalCartItems.length,
        itemBuilder: (context, index) {
          print("Building Cart Item $index");

          return ListTile(
            title: Text(globalCartItems[index].productName),
            subtitle: Text('\$${globalCartItems[index].productPrice}'),
            trailing: Text('Quantity: ${globalCartItems[index].quantity}'),
          );
        },
      ),
    );
  }
}

class CartItem {
  final String productName;
  final String productPrice;
  final int quantity;

  CartItem({
    required this.productName,
    required this.productPrice,
    required this.quantity,
  });
}