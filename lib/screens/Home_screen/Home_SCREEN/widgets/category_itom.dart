import 'package:flutter/material.dart';

class CategoryGridItemWidget extends StatelessWidget {
  final String seedsText;

  CategoryGridItemWidget({
    required this.seedsText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal:5.0,
        vertical: 13.0,
      ),
      decoration: BoxDecoration(
        color: Colors.blue, // Customize the color as needed
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.0),
          Image.asset('assets/logo.png',height:60,width: 60,),
          // Image.network(
          //   'https://example.com/your-image.jpg',
          //   height: 28.0,
          //   width: 28.0,
          // ),
          SizedBox(height: 10.0),
          Text(
            seedsText,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, 
            ),
          ),
        ],
      ),
    );
  }
}
