import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';
import 'package:test_flutter_app/ui/widgets/text_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  NOTE: EMAIL INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInput(label: 'Full Name', placeholder: ''),
                    const SizedBox(height: 16),
                    TextInput(
                      label: 'Email Address',
                      placeholder: '',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextInput(
                      label: 'Password',
                      placeholder: '',
                      secureText: true,
                    ),
                    const SizedBox(height: 30),
                    ButtonFilled(
                      title: "Continue",
                      backgroundColor: purpleColor,
                      textStyle: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup-upload-profile');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ButtonLink(
            title: "Sign In",
            onPressed: () {
              Navigator.pushNamed(context, '/signin');
            },
          ),
        ],
      ),
    );
  }
}
