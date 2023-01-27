import 'package:flutter/material.dart';

class TextFormFieldWidgets extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget prefixIcon;
  final TextEditingController controller;

  const TextFormFieldWidgets({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: TextFormField(
              textInputAction: hintText == 'Enter Your Email' ||
                      hintText == 'Enter Your Name' ||
                      hintText == 'Enter Your Phone Number'
                  ? TextInputAction.next
                  : TextInputAction.done,
              controller: controller,
              keyboardType: hintText == 'Enter Your Email' ||
                      hintText == 'Enter Your Phone Number'
                  ? TextInputType.emailAddress
                  : TextInputType.text,
              obscureText: hintText == 'Enter Your Password' ? true : false,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
                prefixIcon: prefixIcon,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ))),
    );
  }
}
