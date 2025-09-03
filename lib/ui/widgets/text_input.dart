import 'package:flutter/material.dart';
import 'package:test_flutter_app/shared/theme.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextInputType? keyboardType;
  final bool secureText;
  final String type;
  final TextEditingController? controller;

  const TextInput({
    super.key,
    this.label = 'Email Address',
    this.placeholder = 'Your email address',
    this.keyboardType = TextInputType.text,
    this.secureText = false,
    this.type = 'transparent',
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: type == 'transparent' ? Colors.transparent : whiteColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: secureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: greyTextStyle.copyWith(fontSize: 14),
              contentPadding: const EdgeInsets.all(12),
              border: type == 'transparent'
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: lightGreyColor),
                    )
                  : InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: blueColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
