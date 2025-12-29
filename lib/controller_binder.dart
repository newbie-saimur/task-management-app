import 'package:get/get.dart';
import 'package:task_management_app/ui/controllers/email_verification_controller.dart';
import 'package:task_management_app/ui/controllers/login_controller.dart';
import 'package:task_management_app/ui/controllers/pin_verification_controller.dart';
import 'package:task_management_app/ui/controllers/registration_controller.dart';
import 'package:task_management_app/ui/controllers/set_password_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegistrationController>(() => RegistrationController());
    Get.lazyPut<EmailVerificationController>(() => EmailVerificationController());
    Get.lazyPut<PinVerificationController>(() => PinVerificationController());
    Get.lazyPut<SetPasswordController>(() => SetPasswordController());
  }
}