import 'package:mahadev_s_application22/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:mahadev_s_application22/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:mahadev_s_application22/presentation/password_changed_screen/password_changed_screen.dart';
import 'package:mahadev_s_application22/presentation/password_changed_screen/binding/password_changed_binding.dart';
import 'package:mahadev_s_application22/presentation/login_screen/login_screen.dart';
import 'package:mahadev_s_application22/presentation/login_screen/binding/login_binding.dart';
import 'package:mahadev_s_application22/presentation/register_screen/register_screen.dart';
import 'package:mahadev_s_application22/presentation/register_screen/binding/register_binding.dart';
import 'package:mahadev_s_application22/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:mahadev_s_application22/presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import 'package:mahadev_s_application22/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:mahadev_s_application22/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:mahadev_s_application22/presentation/welcome_screen/welcome_screen.dart';
import 'package:mahadev_s_application22/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:mahadev_s_application22/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mahadev_s_application22/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String forgotPasswordScreen = '/forgot_password_screen';

  static String passwordChangedScreen = '/password_changed_screen';

  static String loginScreen = '/login_screen';

  static String registerScreen = '/register_screen';

  static String otpVerificationScreen = '/otp_verification_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String welcomeScreen = '/welcome_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordChangedScreen,
      page: () => PasswordChangedScreen(),
      bindings: [
        PasswordChangedBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    )
  ];
}
