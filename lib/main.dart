import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:krishighar/firebase_options.dart';
import 'package:krishighar/screens/Home_screen/butto_nav_bar.dart';

import 'screens/authintic/login_screen.dart';
import 'screens/splash_screen/custom_splash_screen/custom_view_model.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() async {
     WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
   // final CustomSplashViewModel viewModel = CustomSplashViewModel();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        if(snapshot.hasData){
          return ButtonNavbar();
          // SplashScreen();
          //ButtonNavbar (); 
         // MyHome(viewModel: viewModel);
        }
        else
        {
          return     LoginScreen();//SplashScreen();
          //  MyHome(viewModel: viewModel);

        }
      },),    
        builder: EasyLoading.init(),



    );
  }
} 
     // ButtonNavbar(),
   

// class MyHome extends StatelessWidget {
//   final CustomSplashViewModel viewModel;

//   const MyHome({Key? key, required this.viewModel});

//   @override
//   Widget build(BuildContext context) {
//     return viewModel.buildOnBoardingSlider(context);
//   }
//}
