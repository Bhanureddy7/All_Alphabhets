// main.dart

import 'package:Alphabets/pages/home_screen.dart';
import 'package:Alphabets/pages/splash_screen.dart';
import 'package:flutter/material.dart';
 // Import the SplashScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Show SplashScreen initially
    );
  }
}

// Your existing HomeScreen code can remain unchanged
