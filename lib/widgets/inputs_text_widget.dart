import 'dart:developer';

import 'package:flutter/material.dart';

class InputCustomsText extends StatelessWidget {
  const InputCustomsText({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      autofocus: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
        log('value $value');
      },
      validator: (value) {
        if (value == null) return 'this field is required';
        return value.length < 3 ? 'need 3 characters at least' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: const Icon(Icons.new_releases_sharp),
        icon: const Icon(Icons.account_box_sharp),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.only(
        //                     bottomLeft: Radius.circular(10),
        //                     topRight: Radius.circular(10)
//                    )
        //                ),
      ),
    );
  }
}
