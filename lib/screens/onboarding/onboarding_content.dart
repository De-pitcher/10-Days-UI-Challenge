import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String animatedImage;
  const OnboardingContent(
      {super.key,
      required this.image,
      required this.title,
      required this.text,
      required this.animatedImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset(image),
          Text(
            title,
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: const Color(0xFF493E8A),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: const Color(0xFF4A4D53)),
          ),
        ],
      ),
    );
  }
}
