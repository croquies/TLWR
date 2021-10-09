// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';

class TLWRInputFormField extends StatelessWidget {
  TLWRInputFormField({
    Key? key,
    this.initialValue,
    this.autofocus = false,
    this.controller,
    this.autovalidateMode,
    this.validator,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
  }) : super(key: key);

  final String? initialValue;
  final bool autofocus;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String?)? onChanged;
  final EdgeInsetsGeometry contentPadding;

  final inputBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autofocus: autofocus,
      autovalidateMode: autovalidateMode,
      controller: controller,
      obscureText: password,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding: contentPadding,
        filled: true,
        fillColor: kcBlackHighlightColor,
        prefixIcon: leading,
        suffixIcon: trailing != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              )
            : null,
        border: inputBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
        errorBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: kcPrimaryColor),
        ),
        enabledBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
      ),
    );
  }
}
