import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/city_controller.dart';
import 'package:theproject/utlies/cities/cairo.dart';
import 'package:theproject/utlies/cities/october.dart';
import 'package:theproject/utlies/cities/sadat.dart';
import 'package:theproject/utlies/cities/shipen.dart';
import 'package:theproject/view/cities.dart';


class SavedCities extends StatelessWidget {
  const SavedCities({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(CityController(),permanent: true);
    return Scaffold(
      body:GetBuilder<CityController>(builder: (controller) {
      return
       controller.citiesImg.isEmpty
          ? const Center(
              child: Text('اضف بعض المدن التي تفضلها ! ',
                  style: TextStyle(fontSize: 20)),
            )
          :  ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.citiesImg.length,
              itemBuilder: (context, index) { 
                  return InkWell(onTap: () {
                    controller.showCity(controller.citiesName[index],
                        controller.citiesImg[index]);
                    if (controller.cityName == 'شبين الكوم') {
                      controller.cityPhotos
                          .removeRange(0, controller.cityPhotos.length);
                      controller.cityImges
                          .removeRange(0, controller.cityImges.length);
                      controller.cityPhotos.addAll(Shipen.shipenPhotos);
                    } else if (controller.cityName == 'القاهرة') {
                      controller.cityPhotos
                          .removeRange(0, controller.cityPhotos.length);
                      controller.cityImges
                          .removeRange(0, controller.cityImges.length);
                      controller.cityPhotos.addAll(Cairo.cairoPhotos);
                    } else if (controller.cityName == 'السادات') {
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
                      controller.cityPhotos.addAll(October.octoberPhotos);
                    }

                    controller.addCityImges();
                    Get.to(const City(),
                        duration: const Duration(seconds: 1));
                  }, child: GetBuilder<CityController>(
                    builder: (controller) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: double.infinity,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                controller.citiesImg[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 40,
                              child: Text(
                                controller.citiesName[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      );
                    },
                  ));
                });
              },
            ),
    );
  }
}
