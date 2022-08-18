import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mahadev_s_application22/core/app_export.dart';
import 'package:mahadev_s_application22/core/utils/validation_functions.dart';
import 'package:mahadev_s_application22/widgets/custom_button.dart';
import 'package:mahadev_s_application22/widgets/custom_icon_button.dart';
import 'package:mahadev_s_application22/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                      margin: getMargin(
                                          left: 20, top: 12, right: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 5,
                                                    bottom: 4),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.54)),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgTimelight,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                28.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 4),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMobilesignal,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      17.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWifi,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              3.00)),
                                                                  child: LinearProgressIndicator(
                                                                      value:
                                                                          0.82,
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<Color>(
                                                                              ColorConstant.black900))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 3,
                                                              bottom: 3),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCombinedshape,
                                                              height:
                                                                  getVerticalSize(
                                                                      4.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)))
                                                    ]))
                                          ]))),
                              CustomIconButton(
                                  height: 41,
                                  width: 41,
                                  margin:
                                      getMargin(left: 36, top: 38, right: 36),
                                  onTap: () {
                                    onTapBtntf();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 40, right: 20),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold30
                                          .copyWith())),
                              Container(
                                  width: getHorizontalSize(309.00),
                                  margin:
                                      getMargin(left: 20, top: 16, right: 20),
                                  child: Text("msg_don_t_worry_it".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium16
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 20, top: 57, right: 20),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomButton(
                                  width: 330,
                                  text: "lbl_send_code".tr,
                                  margin:
                                      getMargin(left: 20, top: 30, right: 20),
                                  onTap: onTapBtnSendcode,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtRememberpasswo();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 20,
                                              top: 324,
                                              right: 20,
                                              bottom: 30),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_remember_passwo2"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.15)),
                                                TextSpan(
                                                    text: "lbl_login".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .cyan400,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: 0.15))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ])))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtnSendcode() {
    Get.toNamed(AppRoutes.otpVerificationScreen);
  }

  onTapTxtRememberpasswo() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
