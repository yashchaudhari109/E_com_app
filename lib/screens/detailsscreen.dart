import 'package:ecomapp/component/customizedtext.dart';
import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {Key? key, this.index, this.price, this.height, this.width})
      : super(key: key);
  final height;
  final width;
  final price;
  final index;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: k4color,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0)),
                color: k5color,
              ),
              height: widget.height * 0.70,
              width: widget.width,
              child: Column(
                children: [
                  SizedBox(
                    height: widget.height * 0.20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomizedText(
                              text: products[widget.index],
                              size: 35.0,
                              color: k2color,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CustomizedText(
                              text: "Rs. ${widget.price}",
                              size: 35.0,
                              color: k2color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: k2color,
                ),
                height: widget.height * 0.30,
                width: widget.width * 0.45,
                child: Center(
                  child: CustomizedText(
                    text: "Product ${widget.index}",
                    size: 25.0,
                    color: k3color,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
