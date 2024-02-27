import 'package:flutter/material.dart';
import 'package:krishak_admin/Pages/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminHomepage(),
    );
  }
}
