import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';
import 'package:test_flutter_app/ui/widgets/text_input.dart';

class SignupUploadProfilePage extends StatefulWidget {
  const SignupUploadProfilePage({super.key});

  @override
  State<SignupUploadProfilePage> createState() =>
      _SignupUploadProfilePageState();
}

class _SignupUploadProfilePageState extends State<SignupUploadProfilePage> {
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
            'Join Us to Unlock\nYour Growth',
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
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                    image: const DecorationImage(
                      scale: 2.5,
                      image: AssetImage('assets/ic_upload.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Wijayanti Lintang Palindra',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 20),
                TextInput(
                  label: 'Set PIN (6 digit number)',
                  placeholder: '',
                  keyboardType: TextInputType.number,
                  secureText: true,
                ),
                const SizedBox(height: 20),
                ButtonFilled(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup-upload-identity');
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
        ],
      ),
    );
  }
}
