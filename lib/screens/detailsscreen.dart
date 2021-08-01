import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, this.index}) : super(key: key);
  final index;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: k4color,
      body: Center(
        child: Container(
          child: Text("${widget.index}"),
        ),
      ),
    );
  }
}
