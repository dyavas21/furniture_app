import 'package:flutter/material.dart';
import 'package:furniture_app/pages/onboarding_page.dart';
import 'package:furniture_app/pages/sig_in_page.dart';
import 'package:furniture_app/pages/splash_page.dart';
import 'package:furniture_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
      },
    );
  }
}
