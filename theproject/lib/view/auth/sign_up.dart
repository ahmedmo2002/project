import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/view/auth/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var countryController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(children: [
          const Text(
            'يسعدنا ان تنضم الينا',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Image.asset('assets/images/intro/welcome.png'),
          signUpForm(
              hint: 'الاسم',
              icon: const Icon(Icons.person),
              controller: nameController),
          const SizedBox(
            height: 15,
          ),
          signUpForm(
              hint: 'البريد الالكتروني',
              icon: const Icon(Icons.email),
              controller: emailController),
          const SizedBox(
            height: 15,
          ),
          signUpForm(
              hint: 'كلمة المرور',
              icon: const Icon(Icons.lock),
              controller: passwordController),
          const SizedBox(
            height: 15,
          ),
          signUpForm(
              hint: 'رقم الهاتف',
              icon: const Icon(Icons.phone),
              controller: phoneController,
              isPhone: true),
          const SizedBox(
            height: 15,
          ),
          signUpForm(
              hint: 'الدوله',
              icon: const Icon(Icons.location_city_sharp),
              controller: countryController),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ElevatedButton(
              onPressed: () {
                Get.off(() => const SignIn(),
                    duration: const Duration(seconds: 1));
                Get.snackbar('', 'تم التجيل بنجاح',
                    snackPosition: SnackPosition.BOTTOM);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 236, 95, 78),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text(
                'تسجيل',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Get.off(() => const SignIn(),
                    duration: const Duration(seconds: 1));
              },
              child: const Text(
                'لدي حساب بالفعل !',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 80, 107, 241)),
              ))
        ]),
      ),
    );
  }

  Material signUpForm(
      {required String hint,
      required Widget icon,
      required TextEditingController? controller,
      bool isPhone = false}) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 236, 248, 249),
      child: SizedBox(
        height: 70,
        child: TextFormField(
          controller: controller,
          keyboardType:
              isPhone == true ? TextInputType.phone : TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: icon,
          ),
        ),
      ),
    );
  }
}
