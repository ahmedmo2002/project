import 'package:flutter/material.dart';
import 'package:theproject/view/services/schools.dart';
import 'package:theproject/view/services/university.dart';

import '../../view/services/health.dart';
import '../../view/services/resturant.dart';

class Elsadat{
  static List<String> sadatPhotos = [
    'assets/images/sadat1.jpg',
    'assets/images/sadat2.jpg',
    'assets/images/sadat3.jpg',
    'assets/images/sadat4.jpg',
  ];
  static List<Widget> resturants=[
    Resturants.showResturant(restImage: 'assets/images/sadat/katchup.jpg', restName: 'كاتشب',
    pressed: () =>Resturants.showBottomSheet(image1: 'assets/images/sadat/katchup1.jpg', image2: 'assets/images/sadat/katchup2.jpg',url: 'https://www.facebook.com/profile.php?id=100072395057653') ,),
    Resturants.showResturant(restImage: 'assets/images/sadat/taiba.jpg', restName: 'طيبه',
    pressed: () =>Resturants.showBottomSheet(image1: 'assets/images/sadat/taiba1.jpg', image2: 'assets/images/sadat/taiba2.jpg',url: '') ,),    
    Resturants.showResturant(restImage: 'assets/images/sadat/shish.jpg', restName: 'شيش بيش',
    pressed: () => Resturants.showBottomSheet(image1: 'assets/images/sadat/shish1.jpg', image2: 'assets/images/sadat/shish2.jpg',image3:'assets/images/sadat/shish3.jpg',url: 'https://www.facebook.com/sheeshbeesh1' ),),
    Resturants.showResturant(restImage: 'assets/images/sadat/elsalam.jpg', restName: 'مطعم السلام',
    pressed:() => Resturants.showBottomSheet(image1: 'assets/images/sadat/elsalam1.jpg', image2: 'assets/images/sadat/elsalam2.jpg',url: 'https://www.facebook.com/profile.php?id=100079694277429')),
    Resturants.showResturant(restImage: 'assets/images/sadat/shamy.jpg', restName: 'الشامي',
    pressed:() => Resturants.showBottomSheet(image1: 'assets/images/sadat/shamy1.jpg', image2: 'assets/images/sadat/shamy2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/aboAlsoud.jpg', restName: 'ابو السعود',
    pressed:() => Resturants.showBottomSheet(image1: 'assets/images/sadat/aboAlsoud1.jpg', image2: 'assets/images/sadat/aboAlsoud2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/heartAttack.jpg', restName: 'هارت اتاك',
    pressed:() => Resturants.showBottomSheet(image1: 'assets/images/sadat/heartAttack1.jpg', image2: 'assets/images/sadat/heartAttack2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/fatatry.jpg', restName: 'فطاطري المدينة',
    pressed:() => Resturants.showBottomSheet(image1: 'assets/images/sadat/fatatry1.jpg', image2: 'assets/images/sadat/fatatry2.jpg',url: '')),
  
  ];
  static List<Widget> cafes=[
    Resturants.showResturant(restImage: 'assets/images/sadat/cafes/hamza.jpg', restName: 'حمزه',
    pressed:() =>Resturants.showBottomSheet(image1: 'assets/images/sadat/cafes/hamza1.jpg', image2: 'assets/images/sadat/cafes/hamza2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/cafes/alnadyAlmalaky.jpg', restName: 'النادي الملكي',
    pressed:() =>Resturants.showBottomSheet(image1: 'assets/images/sadat/cafes/alnadyAlmalaky1.jpg', image2: 'assets/images/sadat/cafes/alnadyAlmalaky2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/cafes/robaia.jpg', restName: 'الرباعيه',
    pressed:() =>Resturants.showBottomSheet(image1: 'assets/images/sadat/cafes/robaia1.jpg', image2: 'assets/images/sadat/cafes/robaia2.jpg',url: '')),
    Resturants.showResturant(restImage: 'assets/images/sadat/cafes/tiger.jpg', restName: 'تايجر',
    pressed:() =>Resturants.showBottomSheet(image1: 'assets/images/sadat/cafes/tiger1.jpg', image2: 'assets/images/sadat/cafes/tiger2.jpg',url: '',)),
    Resturants.showResturant(restImage: 'assets/images/sadat/cafes/qasrALemaratiya.jpg', restName: 'قصر الامارتيه',
    pressed:() =>Resturants.showBottomSheet(image1: 'assets/images/sadat/cafes/qasrALemaratiya1.jpg', image2: 'assets/images/sadat/cafes/qasrALemaratiya2.jpg',url: '')),
  ];
  static List<Widget> schools=[
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/nile.jpg',schoolName: 'النيل المصريه',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/stem.jpg',schoolName: 'المتفوقين للعلوم والتكنولوجيا',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/newgeneration.jpg',schoolName: 'الجيل الجديد الدوليه',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/future.jpg',schoolName: 'المستقبل الدوليه',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/sarasaad.jpg',schoolName: 'ساره سعد نواره',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/cambridge.jpg',schoolName: 'كامبردج للغات',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/schools/ministry.jpg',schoolName: 'السادات الرسميه للغات',pressed: () {},),

  ];
  static List<Widget> unversities=[
    Unversities.showUnversities(unversitylImg: 'assets/images/sadat/universities/sadatunversity.jpg', unversityName: 'جامعة السادات',),
  ];
  static List<Widget> faculties=[
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/fcai.jpg',schoolName: 'كلية الحاسبات والذكاء اصطناعي ',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/comm.jpg',schoolName: 'كلية التجاره',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/pharmacy.jpg',schoolName: 'كلية الصيدله',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/vet.jpg',schoolName: 'كلية الطب البيطري',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/law.jpg',schoolName: 'كلية الحقوق',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/edus.jpg',schoolName: 'كلية التربيه',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/sport.jpg',schoolName: 'كلية التربيه الرياضيه',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/educ.jpg',schoolName: 'كلية التربيه للطفوله المبكره',pressed: () {},),
    Schools.showSchool(schoolImg: 'assets/images/sadat/universities/tour.jpg',schoolName: 'كلية السياحه والفنادق',pressed: () {},),
  ];
  static List<Widget> hospitals=[
    Health.showHospitals(hospitalImg: 'assets/images/sadat/hospitals/sadat.jpg', hospitalName: 'مستشفي السادات التخصصي', url: 'https://www.google.com/maps/dir/30.6776108,30.9187805/30.3778,30.5028/@30.4600257,31.3904761,9z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0?entry=ttu'),
    Health.showHospitals(hospitalImg: 'assets/images/sadat/hospitals/lifecare.jpg', hospitalName: 'مستشفي لايف هيلث كير', url: ''),
    Health.showHospitals(hospitalImg: 'assets/images/sadat/hospitals/darelshfaa.jpg', hospitalName: 'مستشفي دار الشفاء', url: ''),
    Health.showHospitals(hospitalImg: 'assets/images/sadat/hospitals/smartcare.jpg', hospitalName: 'مركز سمارت كير', url: ''),

  ]; 
  static List<Widget> pharmacies=[
    Health.showHospitals(hospitalImg: 'assets/images/sadat/pharmacies/elnahas.jpg', hospitalName: 'صيدلية النحاس', url: ''),
    Health.showHospitals(hospitalImg: 'assets/images/sadat/pharmacies/wally.jpg', hospitalName: 'صيدلية والي', url: ''),
    Health.showHospitals(hospitalImg: 'assets/images/sadat/pharmacies/elezaby.jpg', hospitalName: 'صيدلية العزبي', url: ''),

  ];

}