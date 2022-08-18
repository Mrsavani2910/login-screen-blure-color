import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mahadev_s_application22/core/app_export.dart';
import 'package:mahadev_s_application22/core/utils/validation_functions.dart';
import 'package:mahadev_s_application22/widgets/custom_button.dart';
import 'package:mahadev_s_application22/widgets/custom_icon_button.dart';
import 'package:mahadev_s_application22/widgets/custom_text_form_field.dart';
import 'package:mahadev_s_application22/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
                              Container(
                                  width: getHorizontalSize(270.00),
                                  margin:
                                      getMargin(left: 21, top: 40, right: 21),
                                  child: Text("msg_welcome_back_g".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanBold30Black900
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoController1,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 20, top: 57, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoOneController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 20, top: 15, right: 20),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 22,
                                          right: 12,
                                          bottom: 22),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5.69))),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgSignal)),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(17.00),
                                      minHeight: getVerticalSize(11.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotpassword();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 23, top: 5, right: 23),
                                          child: Text("msg_forgot_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanSemiBold14
                                                  .copyWith())))),
                              CustomButton(
                                  width: 330,
                                  text: "lbl_login".tr,
                                  margin:
                                      getMargin(left: 20, top: 68, right: 20),
                                  variant: ButtonVariant.FillBlueA701,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 30, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(111.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 7),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .indigo50)),
                                            Padding(
                                                padding: getPadding(left: 11),
                                                child: Text(
                                                    "lbl_or_login_with".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanSemiBold14
                                                        .copyWith())),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(110.00),
                                                margin: getMargin(
                                                    left: 12,
                                                    top: 9,
                                                    bottom: 7),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.indigo50))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(56.00),
                                      width: getHorizontalSize(330.00),
                                      margin: getMargin(
                                          left: 20, top: 22, right: 20),
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: ColorConstant.gray300,
                                                  width:
                                                      getHorizontalSize(1.00)),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(8.00))),
                                          child: Stack(children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgGoogle();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 40,
                                                            top: 16,
                                                            right: 40,
                                                            bottom: 16),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGoogle,
                                                            height:
                                                                getSize(23.00),
                                                            width: getSize(
                                                                23.00)))))
                                          ])))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveana();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 20,
                                              top: 87,
                                              right: 20,
                                              bottom: 30),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_don_t_have_an_a2"
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
                                                    text: "lbl_register_now".tr,
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

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
