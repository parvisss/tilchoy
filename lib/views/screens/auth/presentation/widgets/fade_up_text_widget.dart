// fade_in_up_text_widget.dart
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class FadeInUpTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const FadeInUpTextWidget({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1000),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
