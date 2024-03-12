import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'view/splash.dart';


FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

Size size = view.physicalSize;
double screenWidth = size.width;
double screenHeight = size.height;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مصر بيتك',
      home: const SplashScreen(),
      locale: const Locale('ar'),
      theme: ThemeData(fontFamily: 'Almarai'),
    );
  }
}
