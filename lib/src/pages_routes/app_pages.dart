import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/view/sign_in_screen.dart';
import 'package:greengrocer/src/pages/auth/view/sign_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoute.splashRoute,
    ),
    GetPage(
      page: () => SignInScreen(),
      name: PagesRoute.signInRoute,
    ),
    GetPage(
      page: () => SignUpScreen(),
      name: PagesRoute.signUpRoute,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoute.baseRoute,
    ),
  ];
}

abstract class PagesRoute {
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String splashRoute = '/splash';
  static const String baseRoute = '/';
}
