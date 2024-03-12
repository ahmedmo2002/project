import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  bool passvisible = true;
  Widget passwordIcon = const Icon(Icons.visibility_off);
  void changeVisability() {
    passvisible = !passvisible;
    passwordIcon = Icon(passvisible ? Icons.visibility_off : Icons.visibility);

    update();
  }
}
