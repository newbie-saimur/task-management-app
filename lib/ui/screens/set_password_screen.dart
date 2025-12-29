import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/ui/widgets/background_svg_image.dart';

import '../../routes/route_names.dart';
import '../utils/app_colors.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

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
                  "Set Password",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 8,),
                Text(
                  "Minimum 8 characters password is required with letter and number combination.",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16,),
                TextFormField(decoration: InputDecoration(hintText: "Password"),),
                const SizedBox(height: 8,),
                TextFormField(decoration: InputDecoration(hintText: "Confirm Password"),),
                const SizedBox(height: 8,),
                ElevatedButton(onPressed: () {}, child: Text("Confirm", style: Theme.of(context).textTheme.titleMedium,)),
                const SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?", style: Theme.of(context).textTheme.bodyMedium,),
                    const SizedBox(width: 8,),
                    GestureDetector(
                      onTap: _navigateToLoginScreen,
                      child: Text("Sign in", style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.primaryColor
                      ),),
                    ),
                  ],
                )
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
}
