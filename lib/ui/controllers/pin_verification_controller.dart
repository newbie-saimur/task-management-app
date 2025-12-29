import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinVerificationController extends GetxController{
  final TextEditingController pinTEController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();









  @override
  void onClose() {
    pinTEController.dispose();
    super.onClose();
  }
}