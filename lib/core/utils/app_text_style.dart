// app_text_styles.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Header text styles
  static const TextStyle headerLarge = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.white, // Luxurious Burgundy for large headers
  );

  static const TextStyle headerMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.white, // Lighter Burgundy for medium headers
  );

  static const TextStyle headerSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.gold900, // Elegant Gold for smaller headers
  );

  // Body text styles
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: AppColors.darkGrey, // Dark grey for readable body text
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 14,
    color: AppColors.textGrey, // Muted grey for standard body text
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    color: AppColors.textGrey, // Muted grey for small body text
  );

  // Button text styles
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white, // White text for buttons for contrast
  );

  // Caption and subtitle styles
  static const TextStyle captionText = TextStyle(
    fontSize: 12,
    color: AppColors.grey, // Subtle grey for captions
  );

  static const TextStyle subtitleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.grey, // Grey for subtitles
  );

  // Error and success text styles
  static const TextStyle errorText = TextStyle(
    fontSize: 14,
    color: AppColors.errorRed, // Red for error messages
    fontWeight: FontWeight.w500,
  );

  static const TextStyle successText = TextStyle(
    fontSize: 14,
    color: AppColors.successGreen, // Green for success messages
    fontWeight: FontWeight.w500,
  );

  // Dialog title and content styles
  static const TextStyle dialogTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.navy900, // Trustworthy Navy for dialog titles
  );

  static const TextStyle dialogContent = TextStyle(
    fontSize: 16,
    color: AppColors.darkGrey, // Dark grey for readable dialog content
  );

  // Hint text styles
  static const TextStyle hintText = TextStyle(
    fontSize: 14,
    color: AppColors.grey, // Subtle grey for hint text
    fontStyle: FontStyle.italic,
  );
}
