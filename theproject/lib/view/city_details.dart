import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/view/services/health_service.dart';
import 'package:theproject/view/services/learning_service%20.dart';
import 'package:theproject/view/services/rights.dart';

import '../main.dart';

class CityDetails {
  static List<Widget> posters = [
    poster(title: 'الخدمات الصحيه', img: 'assets/images/healthService.jpg', tap: (){
       Get.to(const HealthService(),duration: const Duration(seconds: 1));
    }),
    poster(title: 'التعليم', img: 'assets/images/learningservice.jpg', tap: (){
      Get.to(const LearningService(),duration: const Duration(seconds: 1));
    }),
    poster(title: 'الحماية والدعم القانوني', img: 'assets/images/law.jpg', tap:(){} ),
    poster(title: 'الحقوق والواجبات', img: 'assets/images/rights.jpg', tap:(){
      Get.to(const RightsDuties(),duration: const Duration(seconds: 1));
    } ),
    
  ];
  static List<String> citiesImg = [
    'assets/images/shipen1.jpg',
    'assets/images/cairo.jpg',
    'assets/images/sadat.jpg',
    'assets/images/october.jpg',
  ];
  static List<String> cities = ['شبين الكوم', 'القاهرة', 'السادات', 'اكتوبر'];

 static Widget poster({required String title,required String img,required void Function()? tap}){
  return Material(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          borderRadius:BorderRadius.circular(25),
          onTap:tap ,
          child: Stack(
   children: [
     SizedBox(
      height: screenHeight,
      width:screenWidth ,
       child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
           child:
               Image.asset(img, fit: BoxFit.fill)),
     ),
     Positioned(
         bottom: 40,
         right: 10,
         child:Container(
       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
       decoration: BoxDecoration(
           color: Colors.black45,
           borderRadius: BorderRadius.circular(20)),
           child:  Text(
             title,
             style:const TextStyle(
                 color: Colors.white,
                 fontSize: 26,
                 fontStyle: FontStyle.italic,
                 fontWeight: FontWeight.bold),
           ),
         ))
   ],
          ),
        ),
      );
 }
 
  
  
}
