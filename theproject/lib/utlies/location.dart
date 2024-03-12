import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EditLocation{

static Future<Position> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;
  

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
         debugPrint('--------------Location off---------------');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      
      return Future.error('Location permissions are denied');
    }
  }
  if (permission == LocationPermission.whileInUse){
    
      Position position =await Geolocator.getCurrentPosition();
      debugPrint('--------------Location permissions accepted---------------');
      debugPrint('${position.latitude}');
      debugPrint('${position.longitude}');
  }
  if (permission == LocationPermission.unableToDetermine){
        debugPrint('--------------nulllllllllllllllllllll---------------');

  }
  
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 
  

  return await Geolocator.getCurrentPosition();
}

static Future<void> openMap(String lat,String long)async{
  String googleUrl ='https://www.google.com/maps/search/?api=1&query=$lat,$long';
  await canLaunchUrlString(googleUrl)?
  await launchUrlString(googleUrl):
    Get.showSnackbar(const GetSnackBar(
      message: 'could not launch url',
    ));
}
}