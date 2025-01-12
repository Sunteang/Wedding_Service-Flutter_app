import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';
import 'package:wedding_service_app/screens/Login/LoginPage.dart';
import 'package:wedding_service_app/screens/wedding-first-page/WelcomePage.dart';

void main() {
  runApp(WeddingServiceApp());
}

class WeddingServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(), // Set LoginPage as the starting page
      // home: NavBar(),
      home: WelcomePage(),
    );
  }
}
