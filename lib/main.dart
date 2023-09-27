import 'package:flutter/material.dart';
import 'package:mydoit_app/feature/auth/view/sign_in.dart';
import 'package:mydoit_app/feature/landing_page/view/landing_page.dart';
import 'package:mydoit_app/feature/welcome_page/view/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
