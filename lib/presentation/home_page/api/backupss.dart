import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final int _numPages = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: _numPages,
          itemBuilder: (context, index) {
            return OnboardingPage(index: index);
          },
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: () {
            if (_pageController.page! < _numPages - 1) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            } else {
              // Navigate to the next screen or perform any action
              Get.to(NextScreen());
            }
          },
          child: _pageController.page! < _numPages - 1
              ? Icon(Icons.arrow_forward)
              : Text('Get Started'),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final int index;

  OnboardingPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Onboarding Page $index',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 16.0),
          // Add any other content for the onboarding page
        ],
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Next Screen!'),
      ),
    );
  }
}
