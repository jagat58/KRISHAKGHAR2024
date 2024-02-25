// CartScreen.dart

import 'package:flutter/material.dart';
import 'package:krishighar/screens/checkout/checkout.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Map<String, int> itemCountMap = {
    'Seed': 0,
    'Agroche': 0,
    'Hardware': 0,
  };

  Map<String, double> itemPriceMap = {
    'Seed': 10.0,
    'Agroche': 20.0,
    'Hardware': 30.0,
  };

  void incrementItem(String productName) {
    setState(() {
      if (itemCountMap.containsKey(productName)) {
        itemCountMap[productName] = (itemCountMap[productName] ?? 0) + 1;
      } else {
        itemCountMap[productName] = 1;
      }
    });
  }

  void decrementItem(String productName) {
    setState(() {
      if (itemCountMap.containsKey(productName) &&
          itemCountMap[productName]! > 0) {
        itemCountMap[productName] = itemCountMap[productName]! - 1;
      }
    });
  }

  double calculateSubtotal() {
    double subtotal = 0;
    itemCountMap.forEach((productName, quantity) {
      subtotal += quantity * itemPriceMap[productName]!;
    });
    return subtotal;
  }

  void _navigateToCheckout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Checkout(
          itemCountMap: itemCountMap,
          itemPriceMap: itemPriceMap,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 116, 4),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            'Cart',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildItemContainer('assets/seed.jpg', 'Seed', context),
            _buildItemContainer('assets/agroche.jpg', 'Agroche', context),
            _buildItemContainer('assets/hardware.jpg', 'Hardware', context),
            SizedBox(height: 20),
            _buildPriceDetails(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildItemContainer(
      String imagePath, String productName, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 223, 221, 221),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    _buildCircularButton(
                      Icons.remove,
                      () => decrementItem(productName),
                    ),
                    Text(
                      itemCountMap[productName].toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    _buildCircularButton(
                      Icons.add,
                      () => incrementItem(productName),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '\$${(itemCountMap[productName]! * itemPriceMap[productName]!).toStringAsFixed(2)}',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceDetails() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 116, 4),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 78, 78, 78),
            offset: Offset(0, 10),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Fee: \$10',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Subtotal: \$${calculateSubtotal().toStringAsFixed(2)}',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Total: \$${(calculateSubtotal() + 10).toStringAsFixed(2)}',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                _navigateToCheckout(context);
              },
              child: Text(
                'Proceed to Checkout',
                style: TextStyle(
                  color: const Color.fromARGB(
                    255,
                    0,
                    116,
                    4,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircularButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
