import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          title:const Text(
            "فرص العمل المتاحه",
            style: TextStyle(fontSize: 24),
          ),
        ),
        backgroundColor: Colors.blueGrey[100],
        body: SafeArea(
          child: ListView(
            children: [
              showWork(),
              showWork(),
             
            ],
          ),
        ));
  }
  static showWork(){
    return Container(
                padding:const EdgeInsets.all(15),
                margin:const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 325,
                width: 333,
                child: Column(
                  children: [
                   const Text(
                      "اسم الوظيفه الاولي",
                      style: TextStyle(fontSize: 25),
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/shipen2.jpg",
                        height: 130,
                        width: 270,
                        fit: BoxFit.cover,
                      ),
                    ),
                   const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showBottomSheet();
                      },
                      style: ButtonStyle(
                          padding:const MaterialStatePropertyAll(EdgeInsets.only(
                              left: 65, right: 65, top: 10, bottom: 10)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blueGrey[300]),
                          foregroundColor:
                             const MaterialStatePropertyAll(Colors.white)),
                               child:const Text(
                        "التفاصيل",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                
              );
  }

  static showBottomSheet(){
    return Get.bottomSheet(BottomSheet(onClosing: (){}, builder: (context) {
      return Container(
                               height: 420,
                              width: double.infinity,
                              padding:const EdgeInsets.only(
                                  top: 40, left: 30, right: 30),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          child: Image.asset(
                                            "assets/images/shipen2.jpg",
                                            height: 200,
                                            fit: BoxFit.cover,
                                            width: 230,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              size: 45,
                                              Icons.favorite,
                                              color: Colors.red[200],
                                            ))
                                      ],
                                    ),
                                   const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey[100],
                                          borderRadius:const BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(22),
                                              bottomLeft:
                                                  Radius.circular(22))),
                                      height: 45,
                                      width: 150,
                                      child:const Center(
                                        child: Text(
                                          "تفاصيل العمل",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                  const  Text(
                                      "اكتب تفاصيل الشششششغل هناااااااااااااااااااااااااااااااااا",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  const  SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey[100],
                                          borderRadius:const BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(22),
                                              bottomLeft:
                                                  Radius.circular(22))),
                                      height: 45,
                                      width: 150,
                                      child:const Center(
                                        child: Text(
                                          " المتطلبات",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                   const SizedBox(
                                      height: 10,
                                    ),
                                   const Text(
                                      "اكتب تفاصيل الشششششغل هناااااااااااااااااااااااااااااااااا",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                   const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey[100],
                                          borderRadius:const BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(22),
                                              bottomLeft:
                                                  Radius.circular(22))),
                                      width: 150,
                                      child:const Center(
                                        child: Text(
                                          "تواصل معنا",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                   const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          padding:const MaterialStatePropertyAll(
                                              EdgeInsets.only(
                                                  left: 130,
                                                  right: 130,
                                                  top: 11,
                                                  bottom: 11)),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.green[400]),
                                          foregroundColor:
                                             const MaterialStatePropertyAll(
                                                  Colors.white)),
                                     child:const Icon(Icons.whatshot),
          
                                    ),
                                  const  SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                             
                            );
    },));
  }
}