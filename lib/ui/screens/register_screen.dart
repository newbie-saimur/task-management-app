import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/ui/controllers/registration_controller.dart';
import 'package:task_management_app/ui/utils/app_colors.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController controller =
        Get.find<RegistrationController>();

    return Scaffold(
      body: BackgroundSvgImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.12),
                  Text(
                    "Join With Us",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: controller.emailTEController,
                    validator: (email) {
                      email = email?.trim();
                      if (email == null || email.isEmpty) {
                        return "Email can be empty.";
                      }
                      final emailRegex = RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                      );
                      if (!emailRegex.hasMatch(email)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: controller.firstNameTEController,
                    validator: (firstName) {
                      firstName = firstName?.trim();
                      if (firstName == null || firstName.isEmpty) {
                        return "First name is required.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "First Name"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: controller.lastNameTEController,
                    validator: (lastName) {
                      lastName = lastName?.trim();
                      if (lastName == null || lastName.isEmpty) {
                        return "Last name is required.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Last Name"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: controller.mobileTEController,
                    validator: (mobile) {
                      mobile = mobile?.trim();
                      if (mobile == null || mobile.isEmpty) {
                        return "Mobile number is required.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Mobile"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: controller.passwordTEController,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Password can not be empty.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  const SizedBox(height: 8),

                  ElevatedButton(
                    onPressed: _navigateBackToLoginScreen,
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: _navigateBackToLoginScreen,
                        child: Text(
                          "Sign in",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateBackToLoginScreen() {
    Get.back();
  }
}
