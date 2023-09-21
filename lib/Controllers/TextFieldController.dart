import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomTextController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final RxBool isPassword = false.obs;

  void togglePasswordVisibility() {
    isPassword.value = !isPassword.value;
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
