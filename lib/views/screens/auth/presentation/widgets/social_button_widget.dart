// social_button.dart
import 'package:flutter/material.dart';
import 'package:tilchoy/core/utils/app_text_style.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.buttonText, // Using AppTextStyles for social button text
        ),
      ),
    );
  }
}
