import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int indexval = 1;
  bool downIcon=true;
  bool unhcr=true;
  //bool containerPressed=false;
  ThemeMode currentTheme =ThemeMode.light;
  Widget  themeIcon =const Icon(Icons.dark_mode);
  Color? blackColor =Colors.black;
  Color? whiteColor =Colors.white;
  void changeIndex(int value) {
    indexval = value;
    update();
  }
  void changeDownIcon(){
    downIcon==true?downIcon=false:downIcon=true;
    update();
  }
  void showUnhcr(){
    unhcr==true?unhcr=false:unhcr=true;
    update();
  }
  /*void changeContainerPressed(){
    containerPressed==false?containerPressed=true:containerPressed=false;
    update();
  }*/
  void changeTheme(){
    themeIcon==const Icon(Icons.dark_mode)?themeIcon=const Icon(Icons.light_mode,color: Colors.white,):themeIcon=const Icon(Icons.dark_mode);
    blackColor ==Colors.black? Colors.white:Colors.black;
    whiteColor ==Colors.white? Colors.black:Colors.white;

    update();
  }
}
