import 'package:flutter/material.dart';
import 'package:foodlover/components/auth/name.dart';
import 'package:foodlover/pages/loginpage.dart';
import 'package:foodlover/pages/logopage.dart';
import 'package:foodlover/pages/onboardingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);  // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        // Corrected colorScheme usage
        // If you meant to enable Material3, use this line
        // useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
