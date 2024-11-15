// register_controller.dart
import 'package:flutter/material.dart';

class RegisterController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String? validateEmail(String email) {
    // Example simple email validation
    if (email.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }

  String? validatePassword(String password) {
    // Example simple password validation
    if (password.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  String? validateConfirmPassword(String confirmPassword) {
    if (confirmPassword.isEmpty) {
      return 'Please confirm your password';
    }
    if (confirmPassword != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
