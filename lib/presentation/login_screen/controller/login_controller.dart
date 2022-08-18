import '/core/app_export.dart';
import 'package:mahadev_s_application22/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController registerButtoController1 = TextEditingController();

  TextEditingController registerButtoOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerButtoController1.dispose();
    registerButtoOneController.dispose();
  }
}
