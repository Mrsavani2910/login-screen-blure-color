import '/core/app_export.dart';
import 'package:mahadev_s_application22/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController registerButtoController3 = TextEditingController();

  TextEditingController registerButtoOneController2 = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerButtoController3.dispose();
    registerButtoOneController2.dispose();
  }
}
