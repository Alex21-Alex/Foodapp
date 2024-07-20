import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodlover/pages/onboardingpage.dart'; // Adjust the import as per your project structure

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    // Start a timer for 2 seconds
    Timer(Duration(seconds: 2), () {
      // After 2 seconds, navigate to OnBoardingPage
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Red Overlay with Opacity
          Container(
            color: Color(0xffF43D2A).withOpacity(0.8), // Red color with 80% opacity
          ),
          // Content in the center
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 30),
                Text(
                  "FoodLover",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
