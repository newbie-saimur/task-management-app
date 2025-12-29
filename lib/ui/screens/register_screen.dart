import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/ui/utils/app_colors.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSvgImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.12,),
                  Text(
                    "Join With Us",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(decoration: InputDecoration(hintText: "Email")),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Full Name"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Last Name"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Mobile"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  const SizedBox(height: 8),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?", style: Theme.of(context).textTheme.bodyMedium,),
                      const SizedBox(width: 8,),
                      GestureDetector(
                        onTap: _navigateBackToLoginScreen,
                        child: Text("Sign in", style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.primaryColor
                        ),),
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
