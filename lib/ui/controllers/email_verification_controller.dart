import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController{
  final TextEditingController emailTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();









  @override
  void onClose() {
    emailTEController.dispose();
    super.onClose();
  }
}