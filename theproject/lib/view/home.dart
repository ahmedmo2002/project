
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/city_controller.dart';
import 'package:theproject/controller/nav_controller.dart';
import 'package:theproject/utlies/cities/cairo.dart';
import 'package:theproject/utlies/cities/october.dart';
import 'package:theproject/utlies/cities/sadat.dart';
import 'package:theproject/utlies/cities/shipen.dart';
import 'package:theproject/view/cities.dart';
import 'package:theproject/view/financial.dart';
import 'package:theproject/view/phrases.dart';
import '../utlies/screen.dart';
import './city_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavController(), permanent: true);
    Get.put(CityController(), permanent: true);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: const Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
              text: 'مرحبا في ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: 'بيتك!',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            )
          ])),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
             
            Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'اعرف اكتر عن',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                )),
            CarouselSlider(
                items: CityDetails.posters,
                options: CarouselOptions(
                  height:Screen.isPortrait(context)? Screen.height(context)/3:Screen.width(context)/3,
                  padEnds: false,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                )),
              
             Container(
              height:Screen.isPortrait(context)? Screen.height(context)/8:Screen.width(context)/8,
              width:MediaQuery.of(context).size.width ,
              margin:const EdgeInsets.only(right: 5, left: 5, top: 20,bottom: 10),
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.blue[700]),
              child: GetBuilder<BottomNavController>(builder: (controller) {
                return InkWell(
                onTap: (){controller.showUnhcr();},
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Screen.isPortrait(context)?
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ماهى المفوضيه الساميه  ',softWrap: true,style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold,),),
                        Text('  للامم المتحده للاجئين ؟',softWrap: true,style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold,),),
                      ],
                    )
                : const  Text(' ما هي المفوضيه الساميه للامم المتحده للاجئين ؟ ',softWrap: true,style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold,),),
                  Icon(controller.unhcr==true?Icons.arrow_drop_down:Icons.arrow_drop_up,size: 35,color: Colors.white)
                ]),
              );
              },)
            ),
            GetBuilder<BottomNavController>(builder: (controller){
              return controller.unhcr==true?const SizedBox.shrink():
              Container(
                height:Screen.isPortrait(context)? Screen.height(context)/2:Screen.width(context)/4,
                width:Screen.width(context) ,
                margin:const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                padding:const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.blue[400]),
                child:const SingleChildScrollView(child: Text('هي منظمة عالمية مكرسة لإنقاذ الأرواح وحماية الحقوق وبناء مستقبل أفضل للاجئين والمجتمعات النازحة قسرًا والأشخاص عديمي الجنسية. يلتزم مكتب المفوضية السامية للأمم المتحدة لشؤون اللاجئين بحماية الأشخاص الذين أجبروا على الفرار من منازلهم بسبب النزاع والاضطهاد ',style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),softWrap: true)),
                );
            }),
            const Divider(thickness: 6,indent: 20, endIndent: 20),
            Container(
              height:Screen.isPortrait(context)? Screen.height(context)/3:Screen.width(context)/3,
              width:Screen.width(context),
              margin: const EdgeInsets.only(top: 15,left: 8,right: 8),
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(25)),
               child: InkWell(
          borderRadius:BorderRadius.circular(25),
          onTap:(){
            Get.to(const FinancialHelp(),duration: const Duration(seconds: 1));
          } ,
          child: Stack(
   children: [
     SizedBox(
      height:Screen.isPortrait(context)? Screen.height(context)/3:Screen.width(context)/3,
              width:Screen.width(context),
       child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
           child:
               Image.asset('assets/images/financial.jpg', fit: BoxFit.fill)),
     ),
     Positioned(
         bottom: 40,
         right: 10,
         child:Container(
       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
       decoration: BoxDecoration(
           color: Colors.black45,
           borderRadius: BorderRadius.circular(20)),
           child:const  Text(
             'المساعدات النقديه',
             style:TextStyle(
                 color: Colors.white,
                 fontSize: 26,
                 fontStyle: FontStyle.italic,
                 fontWeight: FontWeight.bold),
           ),
         ))
   ],
          ),
        ),
            ),
             
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 30, right: 10, bottom: 15),
              child: const Text(
                'بعض المدن',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: Screen.isPortrait(context)? Screen.height(context)/3:Screen.width(context)/3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CityDetails.citiesImg.length,
                itemBuilder: (context, index) {
                  return GetBuilder<CityController>(builder: (controller) {
                    return InkWell(
                      onTap: () {
                        controller.showCity(CityDetails.cities[index],
                            CityDetails.citiesImg[index]);

                        if (index == 0) {
                          controller.cityPhotos
                              .removeRange(0, controller.cityPhotos.length);
                          controller.cityImges
                              .removeRange(0, controller.cityImges.length);
                          controller.cityPhotos
                              .addAll(Shipen.shipenPhotos);
                        } else if (index == 1) {
                          controller.cityPhotos
                              .removeRange(0, controller.cityPhotos.length);
                          controller.cityImges
                              .removeRange(0, controller.cityImges.length);
                          controller.cityPhotos.addAll(Cairo.cairoPhotos);
                        } else if (index == 2) {
                          controller.cityPhotos
                              .removeRange(0, controller.cityPhotos.length);
                          controller.cityImges
                              .removeRange(0, controller.cityImges.length);
                          controller.cityPhotos.addAll(Elsadat.sadatPhotos);
                        } else {
                          controller.cityPhotos
                              .removeRange(0, controller.cityPhotos.length);
                          controller.cityImges
                              .removeRange(0, controller.cityImges.length);
                          controller.cityPhotos
                              .addAll(October.octoberPhotos);
                        }

                        controller.addCityImges();
                        Get.to(const City(),
                            duration: const Duration(seconds: 1));
                      },
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            height: Screen.isPortrait(context)? Screen.height(context)/3:Screen.width(context)/3,
                            width: Screen.isPortrait(context)? Screen.width(context)/1.2:Screen.height(context)/1.2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                CityDetails.citiesImg[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 40,
                              child: Text(
                                CityDetails.cities[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    );
                  });
                },
              ),
            ),
            Container(
              height:Screen.isPortrait(context)? Screen.height(context)/10:Screen.width(context)/10,
              width:MediaQuery.of(context).size.width ,
              margin:const EdgeInsets.only(right: 5, left: 5, top: 15),
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400]),
              child: GetBuilder<BottomNavController>(builder: (controller) {
                return InkWell(
                onTap: (){controller.changeDownIcon();},
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 const  Text('بعض النصائح المهمه',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                  Icon(controller.downIcon==true?Icons.arrow_drop_down:Icons.arrow_drop_up,size: 35,)
                ]),
              );
              },)
            ),
            GetBuilder<BottomNavController>(builder: (controller){
              return controller.downIcon==true?const SizedBox.shrink(): Column(children: [
              phraseContainer(context, importantAdvises[0].title, importantAdvises[0].explanation),
              phraseContainer(context, importantAdvises[1].title, importantAdvises[1].explanation),
              phraseContainer(context, importantAdvises[2].title, importantAdvises[2].explanation),
              Container(
                height:Screen.isPortrait(context)? Screen.height(context)/12:Screen.width(context)/12,
                width:Screen.width(context) ,
                margin:const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: (){Get.to(const FamousPhrases(),duration: const Duration(seconds: 1));}, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue[600])
                   ),
                  child: const Text('المزيد من النصائح !',style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.w700),), 
                  ),
              )

            ],);
            }),
            const SizedBox(height: 20,)
          ]),
        ));
        
  }
  static Widget phraseContainer(BuildContext context,String word,String explanation){
    // return GetBuilder<BottomNavController>(builder:(controller) {
       return Container(
                height:/*controller.containerPressed==false?Screen.isPortrait(context)? Screen.height(context)/10:Screen.width(context)/10:*/Screen.isPortrait(context)? Screen.height(context)/2.8:Screen.width(context)/4,
                width:Screen.width(context) ,
                margin:const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                padding:const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400]),
                child:/* InkWell(
                  onTap: (){
                    controller.changeContainerPressed();
                  },
                  child:*/Column(
                    children: [
                     Text(word,style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red[600]),softWrap: true),
                   /* controller.containerPressed==false?const SizedBox.shrink() :*/ Text(explanation,style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue[600]),softWrap: true,)
                  ]),
                );
             // );
   //  },);
  }
  static List<Advice> importantAdvises=[
         Advice(title: 'فهم الثقافة المحلية:',explanation: 'من المهم أن تحاول فهم طقوس وقيم وتقاليد المجتمع المصري، والتعرف على العادات الاجتماعية المحلية. هذا يمكن أن يساعد في بناء جسور تواصل أقوى وفهم أعمق.'),
         Advice(title: 'التواصل بفعالية:',explanation: ' يُنصح بالتواصل مع المصريين بشكل مفتوح وصريح، والاستماع بتركيز إلى وجهات نظرهم وتجاربهم. كما يجب أن تكون مستعد للتعلم وتبادل الخبرات.'),
         Advice(title: 'احترام القيم والعادات:',explanation: 'ينبغي أن تظهر الاحترام لقيم وعادات المجتمع المصري، وأن تكون حريص على الالتزام بالآداب الاجتماعية المحلية.'),
         Advice(title: 'الاستفادة من تكنولوجيا الاتصال:',explanation: 'يمكن لاستخدام وسائل التواصل الاجتماعي وتكنولوجيا الاتصالات أن تسهم في بناء علاقات إيجابية مع المجتمع المصري وتوسيع دائرة معارفهم.'),
         Advice(title: 'البحث عن الفرص للتكامل:',explanation: ' يُشجع دائما على البحث عن فرص للاندماج والمشاركة في الأنشطة المجتمعية والثقافية والتطوعية.'),
  ];
}
class Advice{
  String title, explanation;
  Advice({required this.title,required this.explanation});
}