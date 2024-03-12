import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'introduction/firstpage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 150,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.scaleTransition,
        splash: Image.asset('assets/images/home.gif',width: 1.5*MediaQuery.of(context).size.width/2,),
        nextScreen: const FirstPageScreen(),
        duration: 2000,
        animationDuration: const Duration(seconds: 2));
  }
}