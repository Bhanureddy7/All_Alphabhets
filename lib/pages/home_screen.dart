import 'dart:ui';
import 'package:flutter/material.dart';
import 'alphabet_screen.dart';
import 'hindi_screen.dart';
import 'numbers_screen.dart';
import 'telugu_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showAlphabets(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AlphabetScreen()),
    );
  }

  void showNumbers(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NumbersScreen()),
    );
  }

  void showHindiLetters(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HindiScreen()),
    );
  }

  void showTeluguLetters(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TeluguScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Learning Alphabhets Easily For Kids',
       ),),
      ),
      backgroundColor: Colors.transparent, // Make the background transparent

      body: Stack(
        children: [
          // Background image with blur effect
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),

          ),

          // Content
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: ElevatedButton(
                      onPressed: () => showAlphabets(context),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(180, 60)),
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                      ),
                      child: Text('Alphabets', style: TextStyle(fontSize: 25.0)),
                    ),
                  ),
                  SizedBox(height: 90),
                  ElevatedButton(
                    onPressed: () => showNumbers(context),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(180, 60)),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Text('Numbers', style: TextStyle(fontSize: 25.0)),
                  ),
                  SizedBox(height: 90),
                  ElevatedButton(
                    onPressed: () => showHindiLetters(context),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(180, 60)),
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    child: Text('Hindi', style: TextStyle(fontSize: 25.0)),
                  ),
                  SizedBox(height: 90),
                  ElevatedButton(
                    onPressed: () => showTeluguLetters(context),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(180, 60)),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Text('Telugu', style: TextStyle(fontSize: 25.0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
