import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';

class ButtonFilled extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  const ButtonFilled({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
    this.textStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(title, style: textStyle),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
      ),
    );
  }
}

class ButtonLink extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Alignment? alignment;
  final TextStyle? styleText;
  const ButtonLink({
    super.key,
    required this.title,
    this.onPressed,
    this.alignment,
    this.styleText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style:
              styleText ??
              greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
      ),
    );
  }
}

class ButtonService extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final AssetImage? image;
  const ButtonService({super.key, required this.title, this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                scale: 2.0,
                image: image ?? AssetImage('assets/ic_topup.png'),
              ),
            ),
            margin: const EdgeInsets.only(bottom: 5),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        ],
      ),
    );
  }
}
