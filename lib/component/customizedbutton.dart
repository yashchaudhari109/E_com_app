import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({
    Key? key,
    this.onTap,
    this.text,
  }) : super(key: key);
  final onTap;
  final text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: k2color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Source Sans Pro",
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
