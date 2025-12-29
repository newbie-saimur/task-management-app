import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/routes/route_pages.dart';
import 'package:task_management_app/ui/screens/email_verification_screen.dart';
import 'package:task_management_app/ui/screens/splash_screen.dart';
import 'package:task_management_app/ui/utils/app_colors.dart';

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: AppColors.primaryColor,

        textTheme: TextTheme(
          headlineMedium: TextStyle(fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
            color: AppColors.whiteColor,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryColor,
          ),
          bodyMedium: TextStyle(fontWeight: FontWeight.w600),
        ),

        inputDecorationTheme: InputDecorationThemeData(
          filled: true,
          fillColor: AppColors.whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(color: AppColors.secondaryColor),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 10),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
        ),
      ),
      home: SplashScreen(),
      getPages: RoutePages.routes,
    );
  }
}
