// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';

class TLWRInputFormField extends StatelessWidget {
  TLWRInputFormField({
    Key? key,
    required this.controller,
    this.validator,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;
  final TextInputType? keyboardType;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(height: 1),
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: kcVeryLightGreyColor,
        prefixIcon: leading,
        suffixIcon: trailing != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              )
            : null,
        border: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcPrimaryColor),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
      ),
    );
  }
}
