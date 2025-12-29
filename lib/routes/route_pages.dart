import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:task_management_app/routes/route_names.dart';
import 'package:task_management_app/ui/screens/email_verification_screen.dart';
import 'package:task_management_app/ui/screens/login_screen.dart';
import 'package:task_management_app/ui/screens/nav_bar_screen.dart';
import 'package:task_management_app/ui/screens/pin_Verification_screen.dart';
import 'package:task_management_app/ui/screens/register_screen.dart';
import 'package:task_management_app/ui/screens/set_password_screen.dart';

class RoutePages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: RouteNames.homePage, page: () => const NavBarScreen()),
    GetPage(name: RouteNames.loginScreen, page: () => const LoginScreen()),
    GetPage(name: RouteNames.registerScreen, page: () => const RegisterScreen()),
    GetPage(name: RouteNames.setPasswordScreen, page: () => const SetPasswordScreen()),
    GetPage(name: RouteNames.emailVerificationScreen, page: () => const EmailVerificationScreen()),
    GetPage(name: RouteNames.pinVerificationScreen, page: () => const PinVerificationScreen()),
  ];
}