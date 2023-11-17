import 'package:e_learning/app/pages/login_page/login_page_view.dart';
import 'package:e_learning/app/pages/navigation_bar/navigation_bar_view.dart';
import 'package:e_learning/app/pages/onboarding_page/onboarding_page_view.dart';
import 'package:e_learning/app/pages/payment_page/payment_page_view.dart';
import 'package:e_learning/app/pages/register_page/register_page_view.dart';
import 'package:e_learning/app/pages/splash_screen/splash_screen_view.dart';
import 'package:e_learning/app/pages/successfully_page/successfully_page_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;
  static final routes = [
    GetPage(
        name: _Paths.SPLASH_SCREEN,
        page: () => SplashScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.LOGIN_SCREEN,
        page: () => LoginScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.REGISTER_SCREEN,
        page: () => RegisterPage(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ONBOARDING_SCREEN,
        page: () => OnboardingDemo(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => ConvexNavigationBarPage(),
        // binding: OnboardingScreenBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.PAYMENT_PAGE,
        page: () => PaymentPage(),
        transition: Transition.noTransition),
    GetPage(
      name: _Paths.SUCCESS_PAGE,
      page: () => SuccessPage(),
      transition: Transition.noTransition,
    )
  ];
}
