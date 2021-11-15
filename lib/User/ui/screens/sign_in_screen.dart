import 'package:flutter/material.dart';
import '../../../widgets/gradient_back.dart';
class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", MediaQuery.of(context).size.height),
          Column(
            children: [
              Text(
                "Welcome \n This is your travel app",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}