

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample product data
    List<Map<String, dynamic>> products = [
      {"name": "Product 1", "price": 10.99},
      {"name": "Product 2", "price": 19.99},
      {"name": "Product 3", "price": 5.99},
    ];

    double totalCost = products.fold(0, (sum, item) => sum + (item['price'] ?? 0));

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 2, 141, 7) ,
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // List of products
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                // Get product details
                String productName = products[index]["name"];
                double productPrice = products[index]["price"];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(),
                    ),
                    child: ListTile(
                      leading: Text(productName),
                      trailing: Text(
                        "\$$productPrice",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Total cost container
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Total cost :",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(),
                      ),
                    ),
                    child: Text(
                      "\$$totalCost",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Pay button
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  // Add payment logic here
                },
                child: Text("pay"),
                style: ElevatedButton.styleFrom(
                
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}