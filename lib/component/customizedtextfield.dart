import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class Customizedtextfield extends StatelessWidget {
  const Customizedtextfield(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.obscureText,
      this.inputType,
      this.validator,
      this.controller})
      : super(key: key);
  final hintText;
  final onChanged;
  final obscureText;
  final inputType;
  final validator;
  final controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Color(0xFFECF0F3),
        hintText: hintText,
        hintStyle: TextStyle(
          color: k1color,
          fontFamily: "Source Sans Pro",
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: k1color, width: 2.0),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15.0),
        //   borderSide: const BorderSide(color: k1color, width: 2.0),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: k1color, width: 2.5),
        ),
      ),
    );
  }
}
