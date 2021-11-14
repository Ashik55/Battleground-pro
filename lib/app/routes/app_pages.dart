import 'package:battleground_pro/app/bindings/edit_profile_binding.dart';
import 'package:battleground_pro/app/bindings/home_binding.dart';
import 'package:battleground_pro/app/bindings/login_binding.dart';
import 'package:battleground_pro/app/bindings/ongoing_binding.dart';
import 'package:battleground_pro/app/bindings/play_binding.dart';
import 'package:battleground_pro/app/bindings/profile_binding.dart';
import 'package:battleground_pro/app/bindings/registration_binding.dart';
import 'package:battleground_pro/app/bindings/result_binding.dart';
import 'package:battleground_pro/app/bindings/shop_binding.dart';
import 'package:battleground_pro/app/bindings/splash_binding.dart';
import 'package:battleground_pro/app/bindings/welcome_binding.dart';
import 'package:battleground_pro/app/ui/auth/login/login_screen.dart';
import 'package:battleground_pro/app/ui/auth/registration/registration_screen.dart';
import 'package:battleground_pro/app/ui/edit_profile/edit_profile_screen.dart';
import 'package:battleground_pro/app/ui/get_started/welcome_screen.dart';
import 'package:battleground_pro/app/ui/home/home_screen.dart';
import 'package:battleground_pro/app/ui/ongoing_screen/ongoing_screen.dart';
import 'package:battleground_pro/app/ui/play_screen/play_screen.dart';
import 'package:battleground_pro/app/ui/profile_screen/profile_screen.dart';
import 'package:battleground_pro/app/ui/result_screen/result_screen.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_controller.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_screen.dart';
import 'package:battleground_pro/app/ui/splash/splash_screen.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const SPLASH = '/splash';
  static const WELCOME = '/welcome';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTRATION = '/registration';
  static const PLAY = '/play';
  static const RESULT = '/result';
  static const ONGOING = '/ongoing';
  static const PROFILE = '/profile';
  static const SHOP = '/shop';
  static const EDIT_PROFILE = '/edit-profile';
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
    GetPage(
        name: Routes.SHOP, page: () => ShopScreen(), binding: ShopBinding()),
    GetPage(
        name: Routes.ONGOING,
        page: () => OngoingScreen(),
        binding: OngoingBinding()),
    GetPage(
        name: Routes.PLAY, page: () => PlayScreen(), binding: PlayBinding()),
    GetPage(
        name: Routes.RESULT,
        page: () => ResultScreen(),
        binding: ResultBinding()),
    GetPage(
        name: Routes.PROFILE,
        page: () => ProfileScreen(),
        binding: ProfileBinding()),
    GetPage(
        name: Routes.WELCOME,
        page: () => WelcomeScreen(),
        binding: WelcomeBinding()),


    GetPage(
        name: Routes.EDIT_PROFILE,
        page: () => EditProfileScreen(),
        binding: EditProfileBinding()),


  ];
}
