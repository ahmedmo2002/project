import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesController extends GetxController{

  List<Widget>resturants=[];
  void addResturants({required List<Widget> rest}){
    resturants.addAll(rest);
    update();
  }
  List<Widget>cafes=[];
  void addCafes({required List<Widget> cafe}){
    cafes.addAll(cafe);
    update();
  }
  List<Widget>schools=[];
  void addSchools({required List<Widget> passSchools}){
    schools.addAll(passSchools);
    update();
  }
  List<Widget>unversities=[];
  void addunversities({required List<Widget> passUnversities}){
    unversities.addAll(passUnversities);
    update();
  }
  List<Widget>faculties=[];
  void addfaculties({required List<Widget> passFaculties}){
    faculties.addAll(passFaculties);
    update();
  }
  List<Widget>hospitals=[];
  void addHospitals({required List<Widget> passHospitals}){
    hospitals.addAll(passHospitals);
    update();
  }
  List<Widget>pharmacies=[];
  void addPharmacies({required List<Widget> passPharmacies}){
    pharmacies.addAll(passPharmacies);
    update();
  }

}