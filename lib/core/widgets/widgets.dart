import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    this.onChanged,
    this.obscureText = false,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.contentPadding,
    this.controller,
    this.focusNode,
    this.iconw,
    this.suffix,
    this.prefix,
    this.autofocus = false,
    this.onFieldSubmitted,
  });
  String hint;
  Function(String)? onChanged;
  bool obscureText;
  bool autofocus;
  IconData? icon;
  Widget? iconw, suffix, prefix;
  TextInputType keyboardType;
  EdgeInsetsGeometry? contentPadding;
  TextEditingController? controller;
  FocusNode? focusNode;
  Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onFieldSubmitted: onFieldSubmitted,
      autofocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field is Required.';
        } else if (value!.length < 8) {
          return 'This Field Must be greater than 8 characters.';
        } else if (value.length > 50) {
          return 'length must be less than 50  Characters.';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        prefix: iconw,
        hintStyle: const TextStyle(color: Colors.white),
        suffix: prefix, // Add this line to set the icon color
        contentPadding: contentPadding,
        filled: true,
        fillColor: Colors.transparent,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: .5),
          borderRadius: BorderRadius.circular(5000),
        ),
        disabledBorder: buildBorder(),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(516),
        ),

        hintText: hint,
      ),
      keyboardType: keyboardType,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
