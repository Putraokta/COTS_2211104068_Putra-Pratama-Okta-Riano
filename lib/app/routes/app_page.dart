import 'package:get/get.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_page.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_page.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_page.dart';

class AppPages {
  static const initial = onboarding;

  static const onboarding = '/onboarding';
  static const login = '/login';
  static const main = '/main';

  static final routes = [
    GetPage(
      name: onboarding,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: main,
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
