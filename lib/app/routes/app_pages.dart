import 'package:battleground_pro/app/bindings/home_binding.dart';
import 'package:battleground_pro/app/bindings/login_binding.dart';
import 'package:battleground_pro/app/bindings/registration_binding.dart';
import 'package:battleground_pro/app/bindings/splash_binding.dart';
import 'package:battleground_pro/app/ui/auth/login/login_screen.dart';
import 'package:battleground_pro/app/ui/auth/registration/registration_screen.dart';
import 'package:battleground_pro/app/ui/home/home_screen.dart';
import 'package:battleground_pro/app/ui/splash/splash_screen.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTRATION = '/registration';
}

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(
        name: Routes.REGISTRATION,
        page: () => RegistrationScreen(),
        binding: RegistrationBinding()),
    GetPage(
        name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),


  ];
}
