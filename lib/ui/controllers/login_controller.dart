import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();









  @override
  void onClose() {
    emailTEController.dispose();
    passwordTEController.dispose();
    super.onClose();
  }
}