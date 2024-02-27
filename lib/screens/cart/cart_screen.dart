import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final CartItem? cartItem;

  const CartScreen({Key? key, this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItem != null ? 1 : 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItem!.productName),
            subtitle: Text('\$${cartItem!.productPrice}'),
            trailing: Text('Quantity: ${cartItem!.quantity}'),
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
