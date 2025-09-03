import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';

class SignupSuccessPage extends StatelessWidget {
  const SignupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Akun Berhasil\nTerdaftar",
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              "Grow your finance start\ntogether with us",
              style: greyTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ButtonFilled(
              width: 183,
              title: "Get Started",
              backgroundColor: purpleColor,
              textStyle: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
