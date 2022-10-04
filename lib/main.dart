import 'package:flutter/material.dart';
import 'package:ten_days_ui_challenge/screens/authentication/login_page.dart';
import 'package:ten_days_ui_challenge/screens/authentication/welcome_page.dart';
import 'package:ten_days_ui_challenge/screens/messaging/users_page.dart';
import 'package:ten_days_ui_challenge/screens/onboarding/onbaording_page.dart';
import 'package:ten_days_ui_challenge/screens/profile_page.dart';
import 'package:ten_days_ui_challenge/screens/search/start_search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartSearchPage(),
      // home: const OnbaordingPage(),
    );
  }
}
