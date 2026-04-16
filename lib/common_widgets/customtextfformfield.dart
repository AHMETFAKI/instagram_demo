import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String label;
  final IconData prefixicon;
  final String? Function(String?) validator;


  const CustomTextFormField ({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    required this.label,
    required this.prefixicon,
    required this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixicon),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      validator: validator,
    );
  }
}