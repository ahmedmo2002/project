import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/services_controller.dart';

import '../../main.dart';
import '../../utlies/screen.dart';

class Schools extends StatelessWidget {
  const Schools({super.key});

  @override
  Widget build(BuildContext context) {
    ServicesController controller =Get.put(ServicesController(),permanent: true);
    return Scaffold(
      appBar: AppBar(title: const Text('المدارس'),leading: IconButton(onPressed: () => Get.back(),icon: const Icon(Icons.arrow_back),),
    ),
    body: SafeArea(child:ListView.builder(
      itemCount: controller.schools.length,
      itemBuilder: (context,inedx){
        return GetBuilder<ServicesController>(builder: (controller) {
          return Container(
      height:Screen.isPortrait(context)? Screen.height(context)/2.3:Screen.width(context)/2.3,
      width: Screen.width(context),
      margin:const EdgeInsets.all(10),
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300]),child: controller.schools[inedx]);
        },) ;
    }) ),
    );
  }
  static Widget showSchool({required String schoolImg,required String schoolName,required void Function()? pressed}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(schoolImg,fit: BoxFit.fill,height: screenHeight/15,width:screenHeight)),
        Text(schoolName,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),overflow:TextOverflow.clip,maxLines: 2,),
      SizedBox(
        height:screenHeight/40 ,
        width: screenWidth/3,
        child: ElevatedButton(onPressed:pressed , 
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        child: const Text('تفاصيل',style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),),
      )
    ]);
  }
}