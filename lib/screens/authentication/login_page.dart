import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/screens/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: color2,
      ),
      backgroundColor: color2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Let\'s sign you in.',
              style: GoogleFonts.sahitya(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: color1,
              ),
            ),
            Text(
              '''Welcome back, \nYou've been missed!''',
              style: GoogleFonts.roboto(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFE0E0E0),
              ),
            ),
            _customTextField(title: 'Your Email', hintText: 'name@email.com'),
            _customTextField(
                title: 'Your Password',
                hintText: '*  *  *  *  *  *  *  *  *  *  *  *  *  *'),
            const SizedBox(height: 100),
            Column(
              children: [
                const CustomButtom(text: 'Login', isLogin: true),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do you have an accout? ',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF7C7D89),
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFF0F0F0),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column _customTextField({required String title, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: const Color(0xFFE0E0E0),
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: textFieldInputDecoration(hintText),
        ),
      ],
    );
  }
}
