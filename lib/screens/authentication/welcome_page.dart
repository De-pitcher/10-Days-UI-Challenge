import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/screens/authentication/login_page.dart';
import 'package:ten_days_ui_challenge/screens/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Open Doodles Unboxing.png'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'You are not alone',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sahitya(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  const SizedBox(height: 20),
                  const CustomButtom(text: 'Sign Up', isLogin: false),
                  const SizedBox(height: 20),
                  CustomButtom(
                    text: 'Login',
                    isLogin: true,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Forgot password?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
