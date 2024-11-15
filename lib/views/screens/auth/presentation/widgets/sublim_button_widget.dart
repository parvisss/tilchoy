import 'package:flutter/material.dart';
import 'package:tilchoy/core/utils/app_colors.dart';
import 'package:tilchoy/core/utils/app_text_style.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color; // Button color
  final double height; // Button height
  final double borderRadius; // Button border radius
  final IconData? icon; // Optional icon
  final double iconSize; // Icon size

  const SubmitButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.burgundy900, // Default color (burgundy)
    this.height = 50, // Default height
    this.borderRadius = 50, // Default border radius
    this.icon,
    this.iconSize = 24, // Default icon size
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height,
      color: color, // Use the provided color or the default one
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: iconSize,
              color: AppColors.white, // Icon color
            ),
            SizedBox(width: 8), // Space between icon and text
          ],
          Text(
            text,
            style: AppTextStyles.buttonText,
          ),
        ],
      ),
    );
  }
}
