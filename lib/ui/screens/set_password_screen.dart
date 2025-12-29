import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/ui/controllers/set_password_controller.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

import '../../routes/route_names.dart';
import '../utils/app_colors.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SetPasswordController controller = Get.find<SetPasswordController>();
    return Scaffold(
      body: BackgroundSvgImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
                  Text(
                    "Set Password",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Minimum 8 characters password is required with letter and number combination.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 16),
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
                  TextFormField(
                    controller: controller.confirmPasswordTEController,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "Password can not be empty.";
                      }
                      if(password != controller.passwordTEController.text) {
                        return "Password does not match.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Confirm Password"),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: _navigateToLoginScreen,
                    child: Text(
                      "Confirm",
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
                        onTap: _navigateToLoginScreen,
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

  void _navigateToLoginScreen() {
    Get.toNamed(RouteNames.loginScreen);
  }
}
