import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? label;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final bool? enable;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final InputDecoration? inputDecoration;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  EdgeInsets? padding;
  InputField({
    this.label,
    this.validator,
    this.controller,
    this.inputDecoration,
    this.enable = true,
    this.maxLines = 1,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: controller,
        decoration: inputDecoration ??
            InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              labelText: label,
              alignLabelWithHint: true,
            ),
        keyboardType: keyboardType,
        maxLines: maxLines,
        validator: validator,
        obscureText: obscureText!,
        cursorColor: Theme.of(context).primaryColor,
        enabled: enable,
      ),
    );
  }
}
