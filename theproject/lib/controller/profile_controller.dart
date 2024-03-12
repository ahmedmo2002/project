import 'package:get/get.dart';

class ProfileController extends GetxController {
  String name = 'Ahmed mostafa';
  String phone = '01016718111107';
  String email = 'mo@gmail.com';
  void setName(String newName) {
    name = newName;
    update();
  }

  void setPhone(String newPhone) {
    phone = newPhone;
    update();
  }
  void setEmail(String newEmail) {
    email= newEmail;
    update();
  }
}
