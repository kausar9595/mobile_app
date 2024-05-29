import 'package:flutter/material.dart';

import '../custombutton.dart';
import '../form_validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Enter your email address",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: _emailController,
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            validator: FormValidators.validateEmail,
          ),
          const SizedBox(height: 36),
          const Text(
            "Enter Your Password",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: _passwordController,
            hintText: "Password",
            obscureText: !_passwordVisibility,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) =>
                FormValidators.validateEmptyField(value, fieldName: "Password"),
            isPassword: true,
            passwordVisibility: _passwordVisibility,
            togglePasswordVisibility: _togglePasswordVisibility,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: 'Back',
                onTap: () {},
                isPrimary: false,
              ),
              CustomButton(
                text: 'Log in',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _togglePasswordVisibility() {
    _passwordVisibility = !_passwordVisibility;
    setState(() {});
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool passwordVisibility;
  final VoidCallback? togglePasswordVisibility;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.passwordVisibility = false,
    this.togglePasswordVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(top: 20, right: 24, bottom: 20, left: 24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Color(0xff304FFE)),
        ),
        fillColor: const Color(0xFFF7F7F7),
        filled: true,
        hintText: hintText,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: togglePasswordVisibility,
                icon: Icon(passwordVisibility
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              )
            : null,
      ),
    );
  }
}
