import 'controller/password_changed_controller.dart';
import 'package:flutter/material.dart';
import 'package:mahadev_s_application22/core/app_export.dart';
import 'package:mahadev_s_application22/widgets/custom_button.dart';

class PasswordChangedScreen extends GetWidget<PasswordChangedController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 23, top: 214, right: 23),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgCheckmark,
                              height: getSize(100.00),
                              width: getSize(100.00))),
                      Padding(
                          padding: getPadding(left: 23, top: 35, right: 23),
                          child: Text("msg_password_change".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRomanBold26.copyWith())),
                      Container(
                          width: getHorizontalSize(226.00),
                          margin: getMargin(left: 23, top: 13, right: 23),
                          child: Text("msg_your_password_h".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanMedium15
                                  .copyWith())),
                      CustomButton(
                          width: 330,
                          text: "lbl_back_to_login".tr,
                          margin: getMargin(
                              left: 23, top: 30, right: 22, bottom: 20),
                          onTap: onTapBtnBacktologin)
                    ]))))));
  }

  onTapBtnBacktologin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
