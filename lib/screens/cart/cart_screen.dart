import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/product/product_detail_screen.dart';
import 'package:krishighar/screens/checkout/checkout.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
          children: [
            Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 50),
            Expanded(
              flex: 4,
              child: CartItemList(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 80, 80),
              child: ElevatedButton(
                
               onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CheckoutScreen()),
      );
    },
                child: Text('Proceed to Checkout'),
              ),
            ),
          ],
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
          ]
       )
    );
  }
}


class CartItemList extends StatefulWidget {
  @override
  _CartItemListState createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  List<CartItemModel> cartItems = [
    CartItemModel(
        name: 'Maize',
        price: 5.99,
        imageUrl:
            'https://images.pexels.com/photos/3987349/pexels-photo-3987349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CartItemModel(
        name: 'Potato',
        price: 3.49,
        imageUrl:
            'https://images.pexels.com/photos/2581537/pexels-photo-2581537.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CartItemModel(
        name: 'Sugarcane',
        price: 7.99,
        imageUrl:
            'https://images.pexels.com/photos/3987271/pexels-photo-3987271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartItem(
            cartItem: cartItems[index],
            onRemove: () {
              setState(() {
                cartItems.removeAt(index);
              });
            });
      },
    );
  }
}

class CartItemModel {
  final String name;
  final double price;
  final String imageUrl;

  CartItemModel(
      {required this.name, required this.price, required this.imageUrl});
}

class CartItem extends StatefulWidget {
  final CartItemModel cartItem;
  final VoidCallback onRemove;

  const CartItem({required this.cartItem, required this.onRemove});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 2, 141, 7),
                ),
                alignment: Alignment.center,
                child: ClipOval(
                  child: Image.network(
                    widget.cartItem.imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.cartItem.name),
                  Text(
                      '\Rs${(widget.cartItem.price * quantity).toStringAsFixed(2)}'),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                  ),
                  Text(quantity.toString()),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: widget.onRemove,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 8,
          color: Colors.green,
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
  ));
}


