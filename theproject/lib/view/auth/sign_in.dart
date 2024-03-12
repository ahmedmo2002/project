import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/login_controller.dart';
import 'package:theproject/view/auth/sign_up.dart';
import 'package:theproject/view/tabs.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(45),
                    bottomLeft: Radius.circular(45)),
                color: Color.fromARGB(111, 129, 167, 159)),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'مرحبا!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/intro/friend.png'),
            ]),
          ),
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
          GetBuilder<LoginController>(builder: (controller) {
            return signUpForm(
                controller: passwordController,
                hint: 'كلمة المرور',
                icon: const Icon(Icons.lock),
                sufixIcon: IconButton(
                    onPressed: () {
                      controller.changeVisability();
                    },
                    icon: controller.passwordIcon),
                hidden: controller.passvisible);
          }),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.offAll(const Tabs(), duration: const Duration(seconds: 1));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(176, 41, 40, 40),
                  )),
              child: const Text(
                ' تسجيل الدخول ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Get.off(const SignUp(), duration: const Duration(seconds: 1));
              },
              child: Text(
                'ليس لديك حساب؟',
                style: TextStyle(fontSize: 20, color: Colors.red[300]),
              ))
        ]),
      ),
    );
  }

  signUpForm(
      {required String hint,
      required Widget icon,
      required TextEditingController? controller,
      Widget? sufixIcon,
      bool hidden = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 236, 248, 249),
        child: SizedBox(
          height: 65,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
                prefixIcon: icon,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                suffixIcon: sufixIcon),
            obscureText: hidden,
          ),
        ),
      ),
    );
  }
}
