import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityController extends GetxController {
  // تبع صفحة  city

  String cityName = '';
  String cityImg = '';
  List<String> cityPhotos = [];
  List<Widget> cityImges = [];

// تبع صفحة saved city
  List<String> citiesImg = [];
  List<String> citiesName = [];

  void showCity(String name, String img) {
    cityName = name;
    cityImg = img;
    update();
  }

  void addCityImges() {
    for (int i = 0; i < cityPhotos.length; i++) {
      cityImges.add(
        Container(
          margin: const EdgeInsets.all(8),
          height: 300,
          width: 320,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cityPhotos[i],
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    }
  }

  /////////////////////////////
  void addCity(String cName, String cImag) {
    citiesName.add(cName);
    citiesImg.add(cImag);
    update();
  }

  void deleteCity(String cName, String cImag) {
    citiesName.removeWhere((element) => element==cName);
    citiesImg.removeWhere((element) => element==cImag);
    update();
  }
}
