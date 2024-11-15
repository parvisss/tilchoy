import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeInUpWidget extends StatelessWidget {
  const FadeInUpWidget({
    super.key,
    required this.widget,
    required this.duration,
  });
  final Widget widget;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: duration),
      child: widget,
    );
  }
}
