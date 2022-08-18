import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:mahadev_s_application22/core/app_export.dart';
import 'package:mahadev_s_application22/widgets/custom_button.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      CustomButton(
                          width: 330,
                          text: "lbl_login".tr,
                          margin: getMargin(left: 23, top: 498, right: 22),
                          variant: ButtonVariant.OutlineBlack9003f,
                          onTap: onTapBtnLogin),
                      CustomButton(
                          width: 330,
                          text: "lbl_register".tr,
                          margin: getMargin(
                              left: 23, top: 15, right: 22, bottom: 20),
                          variant: ButtonVariant.OutlineGray900,
                          fontStyle:
                              ButtonFontStyle.UrbanistRomanSemiBold15Gray900,
                          onTap: onTapBtnRegister)
                    ]))))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
