import 'package:flutter/material.dart';
import 'package:Alphabets/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Create a fade-in animation for the text
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Create a scale animation for the image
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Start the animations
    _animationController.forward();

    // Delay for 3 seconds and then navigate to the HomeScreen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    // Dispose the animation controller to free up resources
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add a scaled Image widget with your desired image asset
            ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                'assets/splash_image.png', // Replace with your image asset path
                width: 150, // Set your desired width
                height: 150, // Set your desired height
              ),
            ),
            SizedBox(height: 20),
            // Add a fade-in animation for the text
            FadeTransition(
              opacity: _fadeInAnimation,
              child: Text(
                'Learning Alphabets',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
      backgroundColor: Colors.blue, // Set your desired background color
    );
  }
}
