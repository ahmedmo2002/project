import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/utlies/screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../controller/services_controller.dart';
import '../../main.dart';

class Resturants extends StatelessWidget {
  const Resturants({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ServicesController());

    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        title:const Text('المطاعم والكافيهات',style: TextStyle(fontSize: 22),),
      leading: IconButton(onPressed: ()=>Get.back(),icon: const Icon(Icons.arrow_back),)),
      body: ListView(children: [
        Container(
          margin:const EdgeInsets.all(12),
          child: const Text('المطاعم',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),textAlign: TextAlign.start,)),
        Divider(
                  thickness: 3,
                  color:const Color(0xff506169),
                  indent: 10,
                  endIndent:Screen.isPortrait(context)? 230:630,
                ),
        const SizedBox(height: 8,),
        GetBuilder<ServicesController>(builder: (controller){
          return SizedBox(
          height:Screen.isPortrait(context)? Screen.height(context)/2.5:Screen.width(context)/2.5,
          width:Screen.width(context) ,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.resturants.length,
            itemBuilder: (context, index){
            return Container(
              width: Screen.width(context)/2,
              margin:const EdgeInsets.symmetric(horizontal: 10),
              child: controller.resturants[index]);
          },),
        );
        }),
        Container(
          margin:const EdgeInsets.all(12),
          child: const Text('الكافيهات',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),textAlign: TextAlign.start,)),
         Divider(
                  thickness: 3,
                  color:const Color(0xff506169),
                  indent: 10,
                  endIndent:Screen.isPortrait(context)? 230:630,
                ),
                const SizedBox(height: 8,),
          GetBuilder<ServicesController>(builder: (controller){
          return Container(
            margin:const EdgeInsets.only(bottom: 30),
          height:Screen.isPortrait(context)? Screen.height(context)/2.5:Screen.width(context)/2.5,
          width:Screen.width(context) ,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.cafes.length,
            itemBuilder: (context, index){
            return Container(
              width: Screen.width(context)/2,
              margin:const EdgeInsets.symmetric(horizontal: 10),
              child: controller.cafes[index]);
          },),
        );
        }),
      ]),
      
    );
  }

  //---------------------------------------------------------------------------------//
  //---------------------------------------------------------------------------------//
  //---------------------------------------------------------------------------------//

  static Widget showResturant({required String restImage,required String restName,void Function()? pressed }) {
    return Material(
    borderRadius: BorderRadius.circular(30),
    color: Colors.grey[300],
    child: InkWell(
      onTap:pressed ,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(restImage,fit: BoxFit.fill,height: screenHeight/18,width:screenWidth/8,)),
      Container(
        margin:const EdgeInsets.symmetric(vertical: 10),
        child:  Text(restName,style:const TextStyle(fontWeight: FontWeight.w800,fontSize: 22),)),
        const Icon(Icons.fastfood,color: Colors.red,)
    ]),),
      );
  }

  static showBottomSheet({required String image1, String? image2,String? image3,required String  url}){
    return Get.bottomSheet(BottomSheet(onClosing: (){}, builder: (context){
        return Container(
          width: MediaQuery.of(context).size.width,
          padding:const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(height: 15,),
              ClipRRect(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                child: Image.asset(image1,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,)),
              image2!=null? const SizedBox(height: 15,):const SizedBox.shrink(),
              image2!=null? ClipRRect(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),                
                child: Image.asset(image2,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,)):const SizedBox.shrink(),
              image3!=null? const SizedBox(height: 15,):const SizedBox.shrink(),
              image3!=null ?ClipRRect(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),                
                child: Image.asset(image3,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,)):const SizedBox.shrink(),
              const SizedBox(height: 20,),
              const Text('للمزيد من التفاصيل زوروا صفحةالفيسبوك',overflow: TextOverflow.clip, style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
              const SizedBox(height: 10,),
              IconButton(onPressed: ()async{
                 await canLaunchUrlString(url)?
                 await launchUrlString(url):
                 Get.snackbar('', 'can not launch url',snackPosition:SnackPosition.BOTTOM);
              }, icon:const Icon(Icons.facebook,size: 50,color: Colors.blue,)),
              const SizedBox(height: 20,),
          
            ],
          ),
        ); 
       },));
  }
}