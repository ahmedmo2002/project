import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/city_controller.dart';
import 'package:theproject/utlies/cities/sadat.dart';
import 'package:theproject/utlies/cities/shipen.dart';
import 'package:theproject/view/services/faculty.dart';

import '../../controller/services_controller.dart';
import '../../main.dart';
import '../../utlies/screen.dart';

class Unversities extends StatelessWidget {
  const Unversities({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(ServicesController());

    return Scaffold(
      appBar: AppBar(title: const Text('الجامعات'),leading: IconButton(onPressed: () => Get.back(),icon: const Icon(Icons.arrow_back),),
    ),
    body: SafeArea(child:GetBuilder<ServicesController>(builder: (servicesController){
     return Container(
      alignment: Alignment.center,
      margin:const EdgeInsets.symmetric(vertical: 20,horizontal: 8),
       child: ListView.builder(
          itemCount:servicesController.unversities.length ,
          itemBuilder: (context, index) {
          return Container(
             height:Screen.isPortrait(context)? Screen.height(context)/2.3:Screen.width(context)/2.3,
             width: Screen.width(context),
             margin:const EdgeInsets.all(10),
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300]),
        child:servicesController.unversities[index]);
        },),
     );
    })),);
  }
  static Widget showUnversities({required String unversitylImg,required String unversityName,}){
    CityController cityController = Get.put(CityController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(unversitylImg,fit: BoxFit.fill,height: screenHeight/12,width:screenHeight)),
      GetBuilder<ServicesController>(builder: (serviceController) {
        return SizedBox(
        height:screenHeight/50 ,
        width: screenWidth/3,
        child: ElevatedButton(onPressed:(){
                   if (cityController.cityName == 'شبين الكوم') {
                      serviceController.faculties.removeRange(0, serviceController.faculties.length);
                      serviceController.addfaculties(passFaculties: Shipen.faculties);
                      Get.to(()=>const Faculties(),duration: const Duration(seconds: 1));
                    } else if (cityController.cityName == 'القاهرة') {
                       serviceController.faculties.removeRange(0, serviceController.faculties.length);
                       Get.to(()=>const Faculties(),duration: const Duration(seconds: 1));
                    } else if (cityController.cityName == 'السادات') {
                      serviceController.faculties.removeRange(0, serviceController.faculties.length);
                      serviceController.addfaculties(passFaculties: Elsadat.faculties);
                      Get.to(()=>const Faculties(),duration: const Duration(seconds: 1));
                      
                    } else {
                       serviceController.faculties.removeRange(0, serviceController.faculties.length);
                       Get.to(()=>const Faculties(),duration: const Duration(seconds: 1));
                    }
        } , 
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        child:  Text(unversityName,style:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),),
      );
      },)
    ]);
  }
}