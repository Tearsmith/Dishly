// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dishly/core/theme/app_pallete.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const AuthButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(395, 55),
        backgroundColor: AppPallete.backgroundColor,
        foregroundColor: const Color.fromARGB(
          255,
          0,
          0,
          0,
        ), //color of text and icon
        elevation: 2,
        shadowColor: AppPallete.primary.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
