import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: controller.changePage,
        children: [
          _buildPage('Welcome to the App!', 'Discover amazing features.'),
          _buildPage('Stay Connected', 'Always stay in touch with us.'),
          _buildPage('Get Started!', 'Experience the best services.'),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return ElevatedButton(
            onPressed: controller.nextPage,
            child: Text(
              controller.currentIndex.value == 2 ? 'Start' : 'Next',
            ),
          );
        }),
      ),
    );
  }

  Widget _buildPage(String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
