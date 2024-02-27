import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  // Sample list of customer details (Replace it with your actual list)
  final List<Map<String, String>> customers = [
    {
      'name': 'Customer 1',
      'email': 'customer1@email.com',
      'address': 'Pokhara',
      'phone': '123-456-7890'
    },
    {
      'name': 'Customer 2',
      'email': 'customer2@email.com',
      'address': '456 Avenue',
      'phone': '987-654-3210'
    },
    // Add more customer details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Customer Details',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Wrap(
        spacing: 30.0,
        runSpacing: 20.0,
        children: List.generate(
          customers.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 15),
            child: Container(
              height:
                  250.0, // Increased height to accommodate additional content
              width: MediaQuery.of(context).size.width / 2 - 30.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(11.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    customers[index]['name']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
