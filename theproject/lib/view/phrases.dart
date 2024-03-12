import 'package:flutter/material.dart';
import 'package:theproject/view/home.dart';

class FamousPhrases extends StatelessWidget {
  const FamousPhrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('أهم النصائح',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      body: SafeArea(child: 
      ListView.builder(
        itemCount: HomePage.importantAdvises.length,
        itemBuilder:(context, index) {
          return HomePage.phraseContainer(context, HomePage.importantAdvises[index].title, HomePage.importantAdvises[index].explanation);
        }, )),
    );
  }
}