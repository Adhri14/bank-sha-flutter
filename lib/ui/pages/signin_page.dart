import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';
import 'package:test_flutter_app/ui/widgets/buttons.dart';
import 'package:test_flutter_app/ui/widgets/text_input.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
            'Sign In &\nGrow Your Finance',
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
                    TextInput(
                      label: 'Email Address',
                      placeholder: 'Your email address',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    TextInput(
                      label: 'Password',
                      placeholder: 'Your password',
                      secureText: true,
                    ),
                    const SizedBox(height: 16),
                    ButtonLink(
                      title: "Forgot Password",
                      alignment: Alignment.centerRight,
                      styleText: blueTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                        decoration: TextDecoration.underline,
                        decorationColor: blueColor,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ButtonFilled(
                      title: "Sign In",
                      backgroundColor: purpleColor,
                      textStyle: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ButtonLink(
            title: "Create New Account",
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
          ),
        ],
      ),
    );
  }
}
