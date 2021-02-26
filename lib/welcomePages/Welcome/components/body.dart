import 'package:flutter/material.dart';
// import 'package:GRSON/welcomepages/signin/login_screen.dart';
// import 'package:GRSON/welcomepages/Signup/signup_screen.dart';
import 'package:GRSON/welcomepages/welcome/components/background.dart';
import 'package:GRSON/welcomepages/components/rounded_button.dart';
import 'package:GRSON/welcomepages/constants.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:GRSON/secondpages/screens/home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        // Padding(padding: EdgeInsets.only(top:150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO GRSON",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: size.height * 0.08),
            Image.asset("assets/icons_welcomepages/GRSON.png",
                fit: BoxFit.fill, height: 200, width: 200),
            // height: size.height * 0.45,

            SizedBox(height: size.height * 0.05),
            // Padding(padding: EdgeInsets.only(top:150),
            // child: Column(
            //   children: <Widget>[
            RoundedButton(
              text: "SIGN IN",
              press: () {
                Navigator.pushReplacementNamed(context, 'Sign In');
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              // color: kPrimaryLightColor,
              // textColor: Colors.black,
              press: () {
                Navigator.pushReplacementNamed(context, 'Sign Up');
              },
            ),
            RoundedButton(
              text: "OR visitor",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushReplacementNamed(context, 'Visitor Home');
              },
            )
            // ]))
          ],
        ),
      ),
      // )
    );
  }
}
