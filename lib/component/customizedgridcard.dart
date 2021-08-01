import 'package:ecomapp/component/customizedtext.dart';
import 'package:ecomapp/constant.dart';
import 'package:ecomapp/screens/detailsscreen.dart';
import 'package:flutter/material.dart';

class CustomizedGridCard extends StatelessWidget {
  const CustomizedGridCard({Key? key, this.index}) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(index: index);
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
                height: 30.0,
                child: Center(
                    child: CustomizedText(
                  text: products[index],
                  size: 15.0,
                  color: k2color,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
