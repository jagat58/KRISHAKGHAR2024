import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:krishighar/firebase_options.dart';
import 'package:krishighar/screens/Product_Screen/Seeds.dart';
import 'package:krishighar/screens/splash_screen/custom_splash_screen/custom_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final CustomSplashViewModel viewModel = CustomSplashViewModel();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Seeds',
      routes: {
        '/Seeds': (context) => SeedsScreen(),
      },
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyHome(viewModel: viewModel);
          } else {
            return MyHome(viewModel: viewModel);
          }
        },
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  final CustomSplashViewModel viewModel;

  const MyHome({Key? key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return viewModel.buildOnBoardingSlider(context);
  }
}
