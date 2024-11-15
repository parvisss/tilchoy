import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tilchoy/core/utils/app_colors.dart';
import 'package:tilchoy/core/utils/app_text_style.dart';

class InputField extends StatefulWidget {
  final String name; // Field name for FormBuilder
  final String hintText;
  final bool isPasswordField;
  final String? Function(String?)? validator; // Add validator parameter

  const InputField({
    super.key,
    required this.name,
    required this.hintText,
    this.isPasswordField = false,
    this.validator, // Accept validator
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPasswordField; // Default to password field behavior
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText; // Toggle visibility for password field
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name, // Use name for FormBuilder
      validator: widget.validator, // Attach the validator here
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyles.hintText,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(10),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.grey,
                ),
                onPressed: _toggleObscureText,
              )
            : null,
      ),
    );
  }
}
