import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/controllers/login_controller.dart';
import 'package:task_management_app/ui/utils/app_colors.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();

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
                    "Get Started With",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Form(
                    key: controller.formKey,
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
                        TextFormField(
                          obscureText: true,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return "Enter your password";
                            }
                            return null;
                          },
                          controller: controller.passwordTEController,
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                        const SizedBox(height: 8),

                        ElevatedButton(
                          onPressed: _navigateToHomeScreen,
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: _navigateToEmailVerificationPage,
                          child: Text(
                            "Forget Password?",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: _navigateToSignUpScreen,
                              child: Text(
                                "Sign up",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToHomeScreen() {
    Get.toNamed(RouteNames.homePage);
  }

  void _navigateToSignUpScreen() {
    Get.toNamed(RouteNames.registerScreen);
  }

  void _navigateToEmailVerificationPage() {
    Get.toNamed(RouteNames.emailVerificationScreen);
  }
}
