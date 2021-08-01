import 'dart:math';
import 'package:ecomapp/component/customizedtext.dart';
import 'package:ecomapp/constant.dart';
import 'package:ecomapp/screens/detailsscreen.dart';
import 'package:flutter/material.dart';

class CustomizedGridCard extends StatelessWidget {
  const CustomizedGridCard({Key? key, this.index, this.price})
      : super(key: key);
  final price;
  final index;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(
                    index: index, price: price, height: height, width: width);
              },
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: k1color,
              ),
              child: Center(
                child: CustomizedText(
                  text: "Product ${index}",
                  size: 25.0,
                  color: k3color,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  color: k3color,
                ),
                height: 45.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: CustomizedText(
                              text: products[index],
                              size: 15.0,
                              color: k2color,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: CustomizedText(
                            text: "${price}",
                            size: 15.0,
                            color: k2color,
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
