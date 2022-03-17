import 'package:get/get.dart';
import 'package:watad_kids/controller/registration_controller/sign_up_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
