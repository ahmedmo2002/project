import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/controller/profile_controller.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controll = Get.put(ProfileController());
    var nameController = TextEditingController(text: controll.name);
    var phoneController = TextEditingController(text: controll.phone);
    var emailController = TextEditingController(text: controll.email);
    var passwordController = TextEditingController(text: '252002');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        title: const Text(
          'تعديل الملف الشخصي',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.add_a_photo,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            customTextField(
                name: 'الاسم',
                controller: nameController,
                icon: const Icon(Icons.person)),
            customTextField(
                name: 'البريد الالكتروني',
                controller: emailController,
                icon: const Icon(Icons.email)),
            customTextField(
                name: 'كلمة المرور',
                controller: passwordController,
                icon: const Icon(Icons.lock),
                isNumber: true),
            customTextField(
                name: 'رقم الهاتف',
                controller: phoneController,
                icon: const Icon(Icons.phone),
                isNumber: true),
            Container(
                height: 60,
                width: 250,
                margin: const EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: GetBuilder<ProfileController>(
                  builder: (controller) {
                    return ElevatedButton(
                      onPressed: () {
                        nameController.text == ''
                            ? controller.setName('Ahmed Mostafa')
                            : controller.setName(nameController.text);
                        phoneController.text == ''
                            ? controller.setPhone('01016718107')
                            : controller.setPhone(phoneController.text);
                        emailController.text  == ''
                            ?controller.setEmail('mo@gmail.com')
                            :controller.setEmail(emailController.text);
                        Get.snackbar('', 'تم الحفظ بنجاح',
                            snackPosition: SnackPosition.BOTTOM);
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[800])),
                      child: const Text(
                        'حفظ',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget customTextField(
      {required String name,
      required TextEditingController controller,
      required Widget icon,
      bool isNumber = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 236, 248, 249),
        child: SizedBox(
          height: 90,
          child: TextField(
              keyboardType:
                  isNumber == true ? TextInputType.phone : TextInputType.text,
              controller: controller,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: name,
                labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 27, 67, 77),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                prefixIcon: icon,
                border: InputBorder.none,
              )),
        ),
      ),
    );
  }
}
