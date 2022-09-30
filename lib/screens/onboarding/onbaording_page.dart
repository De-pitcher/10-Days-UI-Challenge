import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/screens/onboarding/onboarding_content.dart';

class OnbaordingPage extends StatefulWidget {
  const OnbaordingPage({super.key});

  @override
  State<OnbaordingPage> createState() => _OnbaordingPageState();
}

class _OnbaordingPageState extends State<OnbaordingPage> {
  final controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) => setState(() {
                    _currentIndex = value;
                  }),
                  itemBuilder: (content, index) {
                    final content = onboardingContent[index];
                    return OnboardingContent(
                        image: content.image,
                        title: content.title,
                        text: content.text,
                        animatedImage: content.animatedImage);
                  },
                  itemCount: onboardingContent.length,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.6),
                    SmoothPageIndicator(
                      onDotClicked: (index) => controller.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut),
                      controller: controller,
                      count: onboardingContent.length,
                      effect: const WormEffect(
                        spacing: 4,
                        radius: 8,
                        dotWidth: 10,
                        dotHeight: 10,
                        dotColor: Color(0xFFB4B1CF),
                        activeDotColor: Color(0xFF453988),
                      ),
                    ),
                    const SizedBox(height: 70),
                    Hero(
                      tag: 'animatedImage',
                      transitionOnUserGestures: true,
                      child: SvgPicture.asset(
                          onboardingContent[_currentIndex].animatedImage),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
