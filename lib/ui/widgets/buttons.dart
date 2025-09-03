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
