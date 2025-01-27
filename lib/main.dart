import 'package:flutter/material.dart';
import 'package:wedding_service_app/screens/wedding-first-page/WelcomePage.dart';

void main() {
  runApp(const WeddingServiceApp());
}

class WeddingServiceApp extends StatelessWidget {
  // Add the Key parameter to the constructor
  const WeddingServiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
