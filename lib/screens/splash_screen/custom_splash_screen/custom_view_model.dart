import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:krishighar/screens/splash_screen/splash_screen.dart';

import '../../authintic/Registation_screen.dart';
import '../../authintic/login_screen.dart';
import 'onboder_widgets.dart';


class CustomSplashViewModel {
  final Color kDarkBlueColor = const Color(0xFF053149);

  void navigateToStart(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  
   void navigateToskip(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const RegistationScreen(),
    //   ),
    // );
  }
 

  OnBoardingSlider buildOnBoardingSlider(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Start',
      onFinish: () => navigateToStart(context),
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        '',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.green,
      pageBackgroundColor: Colors.green,
      background: [
        
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 50, 20),
          child: Center(
            child: Image.asset(
              'assets/slide_1.png',
              height:400,
              width: 350,
              
            
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 50, 20),
          child: Center(
            child: Image.asset(
              'assets/slide_2.png',
              height: 400,
              width: 340,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 50, 20),
          child: Center(
            child: Image.asset(
              'assets/slide_3.png',
              height: 400,
              width: 350,
            ),
          ),
        ),
      ],
      speed: 1.8,
      pageBodies: [
        buildPageBody(
          context,
          'Find the Perfect Education',
         'Access educational resources and training to enhance your farming skills.',
        ),
        buildPageBody(
          context,
           'You’ve reached your destination.',
          'krishak Ghar',
        ),
        buildPageBody(
          context,
          'Start Your Journey',
      'Your gateway to buying and selling quality farm products.',
        ),
      ],
    );
  }
}