import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/screens/onboarding/onboarding_content.dart';

final onboardingContent = <OnboardingContent>[
  const OnboardingContent(
    image: 'assets/images/Open Doodles Garden Life.png',
    title: 'Product you love',
    text: 'Grow your business by accepting card payment with a new card reader',
    animatedImage: 'assets/icons/Button.svg',
  ),
  const OnboardingContent(
    image: 'assets/images/Open Doodles In a Hurry.png',
    title: 'Instant Notification',
    text:
        'Instant notification let you quickly see what your favorite stores have shared',
    animatedImage: 'assets/icons/Button(1).svg',
  ),
  const OnboardingContent(
    image: 'assets/images/Open Doodles Swift.png',
    title: 'Smart Point Of Sale',
    text:
        'Smart point of sale system let you grow your business in the most effective way',
    animatedImage: 'assets/icons/Button(2).svg',
  ),
];

const color1 = Color(0xFFB6EDFF);
const color2 = Color(0xFF191720);
const color3 = Color(0xFF405572);

final textStyle1 = GoogleFonts.rubik(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: const Color(0xFF334968),
);
final textStyle2 = GoogleFonts.rubik(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: const Color(0xFF334968),
);
InputDecoration textFieldInputDecoration(String hintText) => InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.roboto(
        fontSize: 18,
        color: const Color(0xFF82838F),
        fontWeight: FontWeight.normal,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFF3F3F48)),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFF3F3F48)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFF3F3F48)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFF3F3F48)),
      ),
    );
