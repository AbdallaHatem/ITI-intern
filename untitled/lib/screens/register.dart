import 'package:flutter/material.dart';
import 'package:untitled/components/my_botton.dart';

import '../components/CustomTextField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _emailController = TextEditingController();
  final _courseController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validateCourse(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a course';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFBEC),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Register Illustration
                  Image.asset('lib/images/working-studying-home-office-concept-260nw-2140712399.webp', height: 300),
                  SizedBox(height: 20),

                  CustomTextField(
                    hintText: 'UserName/Email',
                    controller: _emailController,
                    validator: _validateEmail,
                  ),
                  CustomTextField(
                    hintText: 'Course',
                    controller: _courseController,
                    validator: _validateCourse,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    controller: _passwordController,
                    validator: _validatePassword,
                    obscureText: true,
                  ),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    controller: _confirmPasswordController,
                    validator: _validateConfirmPassword,
                    obscureText: true,
                  ),

                  my_button(
                    text: 'Register',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Perform registration
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
