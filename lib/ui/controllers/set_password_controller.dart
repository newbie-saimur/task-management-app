import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetPasswordController extends GetxController{
  final TextEditingController passwordTEController = TextEditingController();
  final TextEditingController confirmPasswordTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();









  @override
  void onClose() {
    passwordTEController.dispose();
    confirmPasswordTEController.dispose();
    super.onClose();
  }
}