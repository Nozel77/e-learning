part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const REGISTER_SCREEN = _Paths.REGISTER_SCREEN;
  static const LOGIN_SCREEN = _Paths.LOGIN_SCREEN;
  static const ONBOARDING_SCREEN = _Paths.ONBOARDING_SCREEN;
  static const HOME_PAGE = _Paths.HOME_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/';
  static const REGISTER_SCREEN = '/register';
  static const LOGIN_SCREEN = '/login';
  static const ONBOARDING_SCREEN = '/onboarding';
  static const HOME_PAGE = '/home';

}