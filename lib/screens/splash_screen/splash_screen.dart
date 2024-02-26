import 'package:flutter/material.dart';
import 'package:krishighar/screens/authintic/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds:3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
      body: 
      
      Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(60, 60, 60,90),
           child: Image(
             image: AssetImage("assets/logoo.png"),
             
             
           
                   ),
         ),
         




      ),
    );
  }
}
