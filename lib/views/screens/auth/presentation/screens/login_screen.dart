import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:tilchoy/core/utils/app_colors.dart';
import 'package:tilchoy/core/utils/app_router_names.dart';
import 'package:tilchoy/core/utils/app_text_style.dart';
import 'package:tilchoy/views/screens/auth/presentation/widgets/fade_in_up_widget.dart';
import 'package:tilchoy/views/screens/auth/presentation/widgets/fade_up_text_widget.dart';
import 'package:tilchoy/views/screens/auth/presentation/widgets/input_filed_widget.dart';
import 'package:tilchoy/views/screens/auth/presentation/widgets/sublim_button_widget.dart';
import 'package:form_builder_validators/form_builder_validators.dart'; // Import for validation

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>(); // FormBuilder key for validation

   LoginScreen({super.key});

  void _submitForm(BuildContext context) {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      // Form is valid, proceed with login logic
    } else {
      // Show error message if form is not valid
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              AppColors.burgundy900,
              AppColors.burgundy800,
              AppColors.gold900,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUpTextWidget(
                      text: "Login",
                      style: AppTextStyles.headerLarge,
                    ),
                    SizedBox(height: 10),
                    FadeInUpTextWidget(
                      text: "Welcome Back",
                      style: AppTextStyles.headerMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeInUpWidget(
                duration: 1200,
                widget: Container(
                  height: 600.h,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: FormBuilder(
                      key: _formKey, // Attach form key for validation
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 60),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: InputField(
                              name: 'email', // Add name for validation
                              hintText: "Email or Phone number",
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                   errorText: 'Please enter an email or phone number'
                                ),
                                FormBuilderValidators.email(
                                   errorText: 'Please enter a valid email'
                                ),
                              ]),
                            ),
                          ),
                          const Gap(20),
                          FadeInUp(
                            child: InputField(
                              name: 'password', // Add name for validation
                              hintText: "Password",
                              isPasswordField: true,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                   errorText: 'Please enter a password'
                                ),
                                FormBuilderValidators.minLength(8,
                                   errorText: 'Password must be at least 8 characters'
                                ),
                              ]),
                            ),
                          ),
                          const Gap(20),
                          TextButton(
                            onPressed: () {},
                            child: FadeInUpTextWidget(
                              text: "Forgot Password?",
                              style: AppTextStyles.bodyText.copyWith(
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          const Gap(40),
                          SubmitButton(
                            text: "Login",
                            onPressed: () => _submitForm(context), // Trigger form submission
                          ),
                          const Gap(20),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                context.go(AppRouterNames.register); // Navigate to register screen
                              },
                              child: const FadeInUpTextWidget(
                                text: "Don't have an account? Register",
                                style: AppTextStyles.subtitleText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
