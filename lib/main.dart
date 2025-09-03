import 'package:flutter/material.dart';
import 'package:test_flutter_app/ui/pages/home_page.dart';
import 'package:test_flutter_app/ui/pages/onboarding_page.dart';
import 'package:test_flutter_app/ui/pages/signin_page.dart';
import 'package:test_flutter_app/ui/pages/signup_page.dart';
import 'package:test_flutter_app/ui/pages/signup_success_page.dart';
import 'package:test_flutter_app/ui/pages/signup_upload_identity.dart';
import 'package:test_flutter_app/ui/pages/signup_upload_profile.dart';
import 'package:test_flutter_app/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => const SigninPage(),
        '/signup': (context) => const SignupPage(),
        '/signup-upload-profile': (context) => const SignupUploadProfilePage(),
        '/signup-upload-identity': (context) =>
            const SignupUploadIndentityPage(),
        '/signup-success': (context) => const SignupSuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
