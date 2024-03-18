import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';


class CustomFormField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool obscureText;
  const CustomFormField({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              )),
        )
      ],
    );
  }
}
