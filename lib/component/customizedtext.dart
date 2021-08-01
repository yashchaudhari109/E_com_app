import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class CustomizedText extends StatelessWidget {
  const CustomizedText({Key? key, this.text, this.size, this.color})
      : super(key: key);
  final color;
  final text;
  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
    ;
  }
}
