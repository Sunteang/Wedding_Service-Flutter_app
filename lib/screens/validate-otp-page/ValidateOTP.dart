import 'package:flutter/material.dart';
import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';

class ValidateOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Skip button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              // Main content
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i.pinimg.com/736x/ec/24/0b/ec240bd09f5f428b04406d3b6ba7bc05.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Validate OTP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),

                  // OTP field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) => Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Verify OTP button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                    ),
                    child: Text(
                      'Verify OTP',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 16),
                  Text(
                    'Resend Otp by 30s',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),

                  SizedBox(height: 24),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(height: 16),

                  // Social buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        iconSize: 40,
                      ),
                      SizedBox(width: 16),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.tiktok),
                        iconSize: 40,
                      ),
                      SizedBox(width: 16),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mail),
                        iconSize: 40,
                      ),
                    ],
                  ),
                ],
              ),

              // Sign up prompt
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don't have an account?",
              //       style: TextStyle(color: Colors.black, fontSize: 14),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'Sign Up',
              //         style: TextStyle(color: Colors.pink, fontSize: 14),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
