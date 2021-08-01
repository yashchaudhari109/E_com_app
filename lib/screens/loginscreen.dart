import 'package:ecomapp/component/customizedbutton.dart';
import 'package:ecomapp/component/customizedtextfield.dart';
import 'package:ecomapp/mainscreen.dart';
import 'package:ecomapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var Email;
  var Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Customizedtextfield(
                  onChanged: (value) {
                    Email = value;
                  },
                  hintText: "Email",
                  obscureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Customizedtextfield(
                  onChanged: (value) {
                    Password = value;
                  },
                  hintText: "Password",
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50.0,
                  width: 150.0,
                  child: CustomizedButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MainScreen();
                          },
                        ),
                      );
                    },
                    text: "Login",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
