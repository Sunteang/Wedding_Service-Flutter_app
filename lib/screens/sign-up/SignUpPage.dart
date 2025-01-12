// import 'package:flutter/material.dart';
// import 'package:wedding_service_app/pages/nav-bar/NavBar.dart';
// import 'package:wedding_service_app/screens/Login/LoginPage.dart';

// class SignUp extends StatelessWidget {
//   const SignUp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final String username = "Serey Sunteang";
//     final String password = "1234";
//     final String email = "sereysunteang@gmail.com";

//     void navigateToHomeScreen() {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => NavBar()),
//       );
//     }

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         // decoration: const BoxDecoration(
//         //   gradient: LinearGradient(
//         //     begin: Alignment.topLeft,
//         //     end: Alignment.bottomRight,
//         //     colors: [
//         //       Color(0xFF833AB4), // Purple
//         //       Color(0xFFFF5E7E), // Pink
//         //       Color(0xFF42A5F5), // Blue
//         //     ],
//         //   ),
//         // ),
//         color: Color(0xFF42A5F5),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               elevation: 8,
//               margin: const EdgeInsets.symmetric(horizontal: 16),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     const Center(
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "Username",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none,
//                         ),
//                         hintText: 'Enter your username',
//                       ),
//                       controller: TextEditingController(text: username),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       "Email",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none,
//                         ),
//                         hintText: 'Enter your email',
//                       ),
//                       controller: TextEditingController(text: email),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       "Password",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 8),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none,
//                         ),
//                         hintText: 'Enter your password',
//                       ),
//                       controller: TextEditingController(text: password),
//                     ),
//                     const SizedBox(height: 30),
//                     ElevatedButton(
//                       onPressed: navigateToHomeScreen,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         padding: const EdgeInsets.symmetric(vertical: 15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: const Text(
//                         "SIGN UP",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Center(
//                       child: Text(
//                         'Already have an account?',
//                         style: TextStyle(color: Colors.black54),
//                       ),
//                     ),
//                     Center(
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const LoginPage()));
//                         },
//                         child: const Text(
//                           'LOGIN',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wedding_service_app/screens/sign-in/SignInPage.dart';

class SignUpScreen extends StatelessWidget {
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
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),

                  // First name and Last name fields
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: Colors.pink),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.pink),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Phone number field
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Sign Up button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
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

              // Sign in prompt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.pink, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
