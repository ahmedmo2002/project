import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/city_controller.dart';
import 'package:theproject/controller/services_controller.dart';

import '../../utlies/screen.dart';

class Faculties extends StatelessWidget {
  const Faculties({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CityController());
    return Scaffold(
      appBar: AppBar(title:const Text('الكليات',style:  TextStyle(fontSize: 25),)),
      body: SafeArea(child: GetBuilder<ServicesController>(builder: (serviceController) {
        return ListView.builder(
          itemCount: serviceController.faculties.length,
          itemBuilder:(context,index){
           return Container(
      height:Screen.isPortrait(context)? Screen.height(context)/2.3:Screen.width(context)/2.3,
      width: Screen.width(context),
      margin:const EdgeInsets.all(10),
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300]),child: serviceController.faculties[index] );
        } );
      },)),
    );
    }
    }