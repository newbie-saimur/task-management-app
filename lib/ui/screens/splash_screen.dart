import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/utils/assets_path.dart';

import '../widgets/background_svg_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async{
    await Future.delayed(const Duration(seconds: 3));
    Get.offAndToNamed(RouteNames.loginScreen);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSvgImage(
        child: Center(child: SvgPicture.asset(AssetsPath.logoSvg)),
      ),
    );
  }
}
