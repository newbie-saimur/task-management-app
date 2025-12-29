import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController firstNameTEController = TextEditingController();
  final TextEditingController lastNameTEController = TextEditingController();
  final TextEditingController mobileTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();









  @override
  void onClose() {
    emailTEController.dispose();
    firstNameTEController.dispose();
    lastNameTEController.dispose();
    mobileTEController.dispose();
    passwordTEController.dispose();
    super.onClose();
  }
}