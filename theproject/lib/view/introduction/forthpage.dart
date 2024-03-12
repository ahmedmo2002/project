import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/view/auth/sign_in.dart';

class ForthPageScreen extends StatelessWidget {
  const ForthPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 245, 244),
        body: context.isPortrait
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
            color: index == 3
                ? const Color.fromARGB(255, 175, 71, 10)
                : Colors.grey),
      );
    });

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/intro/working.png'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'العمل',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
          RichText(
              text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'بيتك ',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'يمكنك من التعرف علي الوظائف المطلوبه في كل المدن او البحث عن وظائف في مدينه معينة والتواصل مع المسئول',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Get.off(const SignIn(),
                        duration: const Duration(seconds: 1));
                  },
                  child: const Text(
                    'ابدأ الاستخدام',
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...indicator],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
