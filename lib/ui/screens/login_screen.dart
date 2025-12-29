import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/utils/app_colors.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSvgImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Started With",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                TextFormField(decoration: InputDecoration(hintText: "Email")),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                const SizedBox(height: 8),

                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.titleMedium,
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
    );
  }

  void _navigateToSignUpScreen() {
    Get.toNamed(RouteNames.registerScreen);
  }

  void _navigateToEmailVerificationPage() {
    Get.toNamed(RouteNames.emailVerificationScreen);
  }
}
