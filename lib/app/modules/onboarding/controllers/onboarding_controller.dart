import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.toNamed('/login'); // Navigasi ke halaman login.
    } else {
      currentIndex.value++;
    }
  }
}
