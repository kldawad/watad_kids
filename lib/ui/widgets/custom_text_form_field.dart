import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final int? maxLines;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? prefixText;
  final ui.TextDirection? textDirection;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;
  final FocusNode? focusNode;
  final int? minLines;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;
  final bool? readOnly;
  final String? label;
  final TextStyle? labelStyle;

  const CustomTextFormField({
    Key? key,
    this.keyboardType,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.prefixIcon,
    this.maxLines = 1,
    this.labelText,
    this.validator,
    this.controller,
    this.prefixText,
    this.textDirection = TextDirection.ltr,
    this.maxLength,
    this.inputFormatters,
    this.onTap,
    this.focusNode,
    this.minLines,
    this.suffixIcon,
    this.padding,
    this.readOnly = false,
    this.label,
    this.labelStyle = const TextStyle(color: Colors.black),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        // cursorColor: Theme.of(context).primaryColor,
        // style: TextStyle(color: Colors.black),
        readOnly: readOnly!,
        onTap: onTap,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        textDirection: textDirection,
        onChanged: onChanged,
        controller: controller,
        validator: validator,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          label: Text(label!),
          contentPadding: padding,
          prefixIcon: prefixIcon,
          prefixText: prefixText,
          suffixIcon: suffixIcon,
          hintText: hintText,
          helperStyle: TextStyle(color: Colors.white),
          labelText: labelText,
          labelStyle: labelStyle,
          prefixStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            // borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xFFD74545), width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xFFD74545), width: 2),
          ),
          errorStyle: TextStyle(color: Color(0xFFD74545)),
        ),
      ),
    );
  }
}
