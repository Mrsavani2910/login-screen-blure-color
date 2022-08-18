import '/core/app_export.dart';
import 'package:mahadev_s_application22/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController registerButtoController2 = TextEditingController();

  TextEditingController registerButtoOneController1 = TextEditingController();

  TextEditingController registerButtoTwoController = TextEditingController();

  TextEditingController registerButtoThreeController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerButtoController2.dispose();
    registerButtoOneController1.dispose();
    registerButtoTwoController.dispose();
    registerButtoThreeController.dispose();
  }
}
