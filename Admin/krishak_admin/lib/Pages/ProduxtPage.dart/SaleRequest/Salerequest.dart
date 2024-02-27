import 'package:flutter/material.dart';

class Salerequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set background color to black
        title: Text(
          'Sale Request',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontWeight: FontWeight.bold, // Set text to bold
          ),
        ),
        centerTitle: true, // Center the title
        iconTheme: IconThemeData(
          color: Colors.white, // Set back button color to white
        ),
      ),
      body: Center(
        child: Text('This is the Sale Request screen'),
      ),
    );
  }
}
