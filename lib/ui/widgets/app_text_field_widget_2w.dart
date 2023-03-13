
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final int? maxLine;
  final Function(String?)? validator;

  const AppTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText, this.maxLine, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        maxLines: maxLine ?? 1,
        validator: (value){
          if(validator != null){
           return validator!(value);
          }
          return null;

        },
        decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide.none)));
  }
}
