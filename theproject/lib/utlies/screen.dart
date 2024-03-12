
import 'package:flutter/material.dart';

class Screen {
  static double height (BuildContext context){
    return MediaQuery.of(context).size.height;
  }
   static double width (BuildContext context){
    return MediaQuery.of(context).size.width;
  }
   static bool isPortrait (BuildContext context){
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }
  
}