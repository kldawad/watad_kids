import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").obs;

  final formKey = GlobalKey<FormState>();
  final myFocusNodes = <FocusNode>[].obs;
  final myTextEditingControllers = <TextEditingController>[].obs;
  final counter = 0.obs;

  void unFocusFields() {
    for (var element in myFocusNodes) {
      final index = myFocusNodes.indexOf(element);
      if (myFocusNodes[index].hasFocus) {
        myFocusNodes[index].unfocus();
      }
    }
  }

  final registrationFields = [
    "Name",
    "Email",
    "Password",
    "Confirm password",
  ].obs;

  @override
  void onInit() {
    myFocusNodes.value = List.generate(5, (index) => FocusNode());
    ever(counter, (value) => print("HELLO"));
    myTextEditingControllers.value = List.generate(5, (index) => TextEditingController());
    super.onInit();
  }
}
