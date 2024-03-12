import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/utlies/screen.dart';
import 'package:theproject/view/auth/sign_in.dart';
import 'package:theproject/view/introduction/secondpage.dart';

class FirstPageScreen extends StatelessWidget {
  const FirstPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        body: Screen.isPortrait(context)
            ? screenBody()
            : SingleChildScrollView(
                child: screenBody(),
              ));
  }

  Container screenBody() {
    List<Widget> indicator = List.generate(4, (index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index == 0
                ? const Color.fromARGB(255, 175, 71, 10)
                : Colors.grey),
      );
    });

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/intro/world.png'),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                'مرحبا بك في',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                ' بيتك!',
                style: TextStyle(
                    color: Color.fromARGB(255, 175, 71, 10),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'هذا التطبيق يساعدك علي الاستقرار في مصر من خلال تقديم العديد من الخدمات في الصحه والتعليم والعمل.',
            style: TextStyle(
                color: Color.fromARGB(255, 175, 71, 10),
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Get.off(const SignIn(),
                        duration: const Duration(seconds: 1));
                  },
                  child: const Text(
                    'تخطي',
                    style: TextStyle(fontSize: 17),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(() => const SecondPageScreen(),
                        duration: const Duration(seconds: 1));
                  },
                  child: const Text(
                    'التالي',
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...indicator],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
