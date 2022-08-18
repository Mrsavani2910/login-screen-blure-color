import '/core/app_export.dart';
import 'package:mahadev_s_application22/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController registerButtoController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerButtoController.dispose();
  }
}
