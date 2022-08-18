import 'controller/otp_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mahadev_s_application22/core/app_export.dart';
import 'package:mahadev_s_application22/widgets/custom_button.dart';
import 'package:mahadev_s_application22/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends GetWidget<OtpVerificationController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 20, top: 12, right: 14),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 5, bottom: 4),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.54)),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgTimelight,
                                                height: getVerticalSize(11.00),
                                                width:
                                                    getHorizontalSize(28.00)))),
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 4),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMobilesignal,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          17.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgWifi,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          15.00))),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          11.00),
                                                      width: getHorizontalSize(
                                                          22.00),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      3.00)),
                                                          child: LinearProgressIndicator(
                                                              value: 0.82,
                                                              valueColor: AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  ColorConstant
                                                                      .black900))))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 3,
                                                      bottom: 3),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCombinedshape,
                                                      height:
                                                          getVerticalSize(4.00),
                                                      width: getHorizontalSize(
                                                          1.00)))
                                            ]))
                                  ]))),
                      CustomIconButton(
                          height: 41,
                          width: 41,
                          margin: getMargin(left: 36, top: 38, right: 36),
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(left: 20, top: 29, right: 20),
                          child: Text("msg_otp_verificatio".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRomanBold30.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(331.00),
                              margin: getMargin(left: 20, top: 21, right: 20),
                              child: Text("msg_enter_the_verif".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium16Bluegray401
                                      .copyWith()))),
                      Padding(
                          padding: getPadding(left: 20, top: 62, right: 20),
                          child: Container(
                              width: getHorizontalSize(330.00),
                              height: getVerticalSize(60.00),
                              child: Obx(() => PinCodeTextField(
                                  appContext: context,
                                  controller: controller.otpController.value,
                                  length: 4,
                                  obscureText: false,
                                  obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  autoDismissKeyboard: true,
                                  enableActiveFill: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) {},
                                  textStyle: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(22),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700),
                                  pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(60.00),
                                      fieldWidth: getHorizontalSize(69.13),
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00)),
                                      selectedFillColor: ColorConstant.gray50,
                                      activeFillColor: ColorConstant.gray50,
                                      inactiveFillColor: ColorConstant.gray50,
                                      inactiveColor: ColorConstant.indigo50,
                                      selectedColor: ColorConstant.indigo50,
                                      activeColor: ColorConstant.indigo50))))),
                      CustomButton(
                          width: 330,
                          text: "lbl_verify".tr,
                          margin: getMargin(left: 20, top: 30, right: 20),
                          onTap: onTapBtnVerify,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 20, top: 325, right: 20, bottom: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_didn_t_received2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.15)),
                                    TextSpan(
                                        text: "lbl_resend".tr,
                                        style: TextStyle(
                                            color: ColorConstant.cyan400,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.15))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtnVerify() {
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }
}
