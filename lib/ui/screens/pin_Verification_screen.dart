import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';
import '../utils/app_colors.dart';

class PinVerificationScreen extends StatelessWidget {
  const PinVerificationScreen({super.key});

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
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.25,),
                  Text(
                    "Pin Verification",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "A 6 digit verification pin has been to your email address.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 16),
              
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedFillColor: AppColors.primaryColor,
                      selectedColor: AppColors.primaryColor,
                      inactiveFillColor: AppColors.whiteColor,
                      inactiveColor: AppColors.secondaryColor.withValues(alpha: 0.15)
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    appContext: context,
                  ),
              
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: _navigateToSetPasswordScreen,
                    child: Text("Verify", style: Theme.of(context).textTheme.titleMedium,),
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
      ),
    );
  }

  void _navigateToLoginScreen() {
    Get.toNamed(RouteNames.loginScreen);
  }

  void _navigateToSetPasswordScreen() {
    Get.toNamed(RouteNames.setPasswordScreen);
  }
}
