import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';

class SignupUploadIndentityPage extends StatefulWidget {
  const SignupUploadIndentityPage({super.key});

  @override
  State<SignupUploadIndentityPage> createState() =>
      _SignupUploadIndentityPageState();
}

class _SignupUploadIndentityPageState extends State<SignupUploadIndentityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 70),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: lightBackgroundColor,
                    image: const DecorationImage(
                      scale: 1.5,
                      fit: BoxFit.none,
                      image: AssetImage('assets/ic_upload.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 40),
                ButtonFilled(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/signup-success',
                      (Route<dynamic> route) => false,
                    );
                  },
                  backgroundColor: purpleColor,
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ButtonLink(
            title: "Skip for Now",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/signup-success',
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
