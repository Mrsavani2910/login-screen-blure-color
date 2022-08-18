import '../controller/password_changed_controller.dart';
import 'package:get/get.dart';

class PasswordChangedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordChangedController());
  }
}
