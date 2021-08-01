import 'package:ecomapp/component/customizedgridcard.dart';
import 'package:ecomapp/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.email}) : super(key: key);
  final email;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E-Com App",
          style: TextStyle(color: k2color),
        ),
        backgroundColor: k4color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.75,
              crossAxisCount: 2,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, index) {
              return CustomizedGridCard(index: index);
            }),
      ),
    );
  }
}
