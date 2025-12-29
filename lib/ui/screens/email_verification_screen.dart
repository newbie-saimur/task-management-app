import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';
import '../controllers/email_verification_controller.dart';
import '../utils/app_colors.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final EmailVerificationController controller =
        Get.find<EmailVerificationController>();
    return Scaffold(
      body: BackgroundSvgImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.25),
                Text(
                  "Your Email Address",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  "A 6 digit verification pin will send to your email address.",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16),
                Form(
                  child: Column(
                    children: [
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
                      ElevatedButton(
                        onPressed: _navigateToPinVerificationScreen,
                        child: Icon(
                          Icons.arrow_circle_right_outlined,
                          color: AppColors.whiteColor,
                          size: 24,
                        ),
                      ),
                    ],
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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToLoginScreen() {
    Get.toNamed(RouteNames.loginScreen);
  }

  void _navigateToPinVerificationScreen() {
    Get.toNamed(RouteNames.pinVerificationScreen);
  }
}
