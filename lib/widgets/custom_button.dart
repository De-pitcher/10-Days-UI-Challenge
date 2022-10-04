import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final bool isLogin;
  final Function()? onPressed;
  const CustomButtom({
    Key? key,
    required this.text,
    required this.isLogin,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 312,
      child: ElevatedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: isLogin == false ? color2 : const Color(0xFFFFFFFF),
        ),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: isLogin ? color2 : const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
