import 'package:flutter/material.dart';
import 'package:theproject/view/services/health.dart';
import 'package:theproject/view/services/schools.dart';
import 'package:theproject/view/services/university.dart';

import '../../view/services/resturant.dart';

class Shipen{

static late  double distance;
static late  String redistance;
   static List<String> shipenPhotos = [
    'assets/images/shipen.jpg',
    'assets/images/shipen2.jpg',
    'assets/images/shipen3.jpg',
    'assets/images/shipen4.jpg',
  ];
  
  
  static List<Widget> resturants=[
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/elkrawan.jpg',restName: 'الكروان',
    pressed: () {
       Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/elkrawan_menu1.jpg', image2: 'assets/images/shipen/resturants/elkrawan_menu2.jpg',url: 'https://www.facebook.com/Alkarawan.2022');
    },
    ),
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/eldemshky.jpg', restName: 'الدمشقي',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/eldemshky1.jpg', image2: 'assets/images/shipen/resturants/eldemshky2.jpg',url: 'https://www.facebook.com/eldemshqy'),),
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/altaibat.jpg', restName: 'الطيبات',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/altaibat1.jpg', image2: 'assets/images/shipen/resturants/altaibat2.jpg',url: 'https://www.facebook.com/AltaibatRestaurants'),),
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/elshabrawy.jpg', restName: 'الشبراوي',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/elshabrawy1.jpg', image2: 'assets/images/shipen/resturants/elshabrawy2.jpg',url: 'https://www.facebook.com/elshabrawyshibinelkom/?ref=page_internal'),),
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/hiproust.jpg', restName: 'هاي بروست',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/hiproust1.jpg', image2: 'assets/images/shipen/resturants/hiproust2.jpg',url: 'https://www.facebook.com/HiProustResShibinAlKawm'),),
    Resturants.showResturant(restImage: 'assets/images/shipen/resturants/hadramot.jpg', restName: 'حضر موت',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/shipen/resturants/hadramot1.jpg', image2: 'assets/images/shipen/resturants/hadramot2.jpg',url: 'https://www.facebook.com/hadramawt.mohandeseen'),)
    
  ];
  static List<Widget> cafes=[
    Resturants.showResturant(restImage: 'assets/images/shipen/cafes/cazablanka.jpg', restName: 'كازابلانكا',
    pressed:()=>Resturants.showBottomSheet (image1: 'assets/images/shipen/cafes/cazablanka1.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/shipen/cafes/afandina.jpg', restName: 'افندينا',
    pressed:()=>Resturants.showBottomSheet(image1: 'assets/images/shipen/cafes/afandina1.jpg',image2:'assets/images/shipen/cafes/afandina2.jpg',url: '' ))
  ];
  static List<Widget> schools=[
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/salam.jpg', schoolName: 'مدرسة السلام الابتدائيه', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/egypt_japan.jpg', schoolName: 'المدرسة المصرية اليابانية', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/zahraa.jpg', schoolName: 'مدرسة الزهراء', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/gendey.jpg', schoolName: 'مدرسة الشهيد الجندي', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/idgl.jpg', schoolName: 'IDGL SCHOOL', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/schools/elnahda.jpg', schoolName: 'مدرسة السلام الابتدائيه', pressed: (){}),

  ];

  static List<Widget>unversities=[
    Unversities.showUnversities(unversitylImg: 'assets/images/shipen/universities/menoufia-university.jpg', unversityName: 'جامعة المنوفية')
  ];
  static List<Widget>faculties=[
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/computer.jpg', schoolName: 'كلية الحاسبات والمعلومات', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/medicine.jpg', schoolName: 'كلية الطب', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/pharmacy.jpg', schoolName: 'كلية الصيدله', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/engineering.jpg', schoolName: 'كلية الهندسه', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/sceince.jpg', schoolName: 'كلية العلوم', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/comm.jpg', schoolName: 'كلية التجارة', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/law.jpg', schoolName: 'كلية الحقوق', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/adab.jpg', schoolName: 'كلية اداب', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/education.jpg', schoolName: 'كلية التربية', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/physical.jpg', schoolName: 'كلية التربية الرياضية', pressed: (){}),
    Schools.showSchool(schoolImg: 'assets/images/shipen/universities/agriculuture.jpg', schoolName: 'كلية الزراعة', pressed: (){}),

  ];
  static List<Widget> hospitals=[
    Health.showHospitals(hospitalImg: 'assets/images/shipen/hospitals/elkabed.jpg', hospitalName: 'معهد الكبد القومي', url:'https://maps.app.goo.gl/xZr3QqshPWjQL9e28'
    /* (){ 
      EditLocation.getCurrentLocation().then((value){
        distance=Geolocator.distanceBetween(value.latitude, value.longitude, 30.5772354178734, 31.014363365053885)/1000;
        redistance=distance.toStringAsFixed(2);
        Get.snackbar('', 'المسافه بينك وبين هذا المكان $redistance km',
        duration: const Duration(seconds: 2),snackPosition: SnackPosition.BOTTOM);
        debugPrint('المسافه بينك وبين هذا المكان $redistance km');
        EditLocation.openMap(30.5772354178734.toString() , 31.014363365053885.toString());
      });
       }*/),
    Health.showHospitals(hospitalImg: 'assets/images/shipen/hospitals/elramad.jpg', hospitalName: 'مستشفي الرمد', url: 'https://maps.app.goo.gl/ELgyqoG7uivXM9Wk7'),
    Health.showHospitals(hospitalImg: 'assets/images/shipen/hospitals/mawada.jpg', hospitalName: 'مستشفي موده', url: 'https://maps.app.goo.gl/QFdYkX5DgNmFtSnR'),
    Health.showHospitals(hospitalImg: 'assets/images/shipen/hospitals/mahroqy.jpg', hospitalName: 'مستشفي المحروقي التخصصي', url: 'https://maps.app.goo.gl/MnnUvr5X5bYFfUMd8'),

  ];
  static List<Widget> pharmacies=[
    Health.showHospitals(hospitalImg: 'assets/images/shipen/pharmacies/gendy.jpg', hospitalName: 'صيدلية الجندي', url: 'https://maps.app.goo.gl/PrGrzPhaaWZZ1R3T6'),
    Health.showHospitals(hospitalImg: 'assets/images/shipen/pharmacies/aiad.jpg', hospitalName: 'صيدلية د محمد عياد', url: 'https://maps.app.goo.gl/zV5iZEEFuG9GqiWX6'),
    Health.showHospitals(hospitalImg: 'assets/images/shipen/pharmacies/ezzat.jpg', hospitalName: ' صيدلية د عزت سعد',url: 'https://maps.app.goo.gl/owhhajmBVR6vPKd99'),

  ];

}