import 'package:flutter/material.dart';

import 'package:just_audio/just_audio.dart';

class AlphabetScreen extends StatefulWidget {
  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  int currentIndex = 0;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  // Function to be called when the button is pressed
  void onPressedButton() async {
    var soundPath = alphabetSounds[allAlphabets[currentIndex]];
    if (soundPath != null) {
      await _audioPlayer.setAsset(soundPath);
      await _audioPlayer.play();
    }
  }




  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  final allAlphabets =
  List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  final wordsForAlphabets = [
    'A for Apple',
    'B for Ball',
    'C for Cat',
    'D for Dog',
    'E for Elephant',
    'F for Fish',
    'G  for Giraffe',
    'H for Horse',
    'I for Ice Cream',
    'J for Jam',
    'K for Kite',
    'L for Lion',
    'M for Monkey',
    'N for Nest',
    'O for Orange',
    'P for Penguin',
    'Q for Queen',
    'R for Rainbow',
    'S for Sun',
    'T for Train',
    'U for Umbrella',
    'V for Van',
    'W for Watermelon',
    'X for Xylophone',
    'Y for Yak',
    'Z for Zebra',
  ];

  final Map<String, String> alphabetImages = {
    'A': 'assets/alphabhet_images/a.jpg',
    'B': 'assets/alphabhet_images/b.jpg',
    'C': 'assets/alphabhet_images/c.jpg',
    'D': 'assets/alphabhet_images/d.jpg',
    'E': 'assets/alphabhet_images/e.jpg',
    'F': 'assets/alphabhet_images/f.jpg',
    'G': 'assets/alphabhet_images/g.jpg',
    'H': 'assets/alphabhet_images/h.jpg',
    'I': 'assets/alphabhet_images/i.jpg',
    'J': 'assets/alphabhet_images/j.jpg',
    'K': 'assets/alphabhet_images/k.jpg',
    'L': 'assets/alphabhet_images/l.jpg',
    'M': 'assets/alphabhet_images/m.jpg',
    'N': 'assets/alphabhet_images/n.jpg',
    'O': 'assets/alphabhet_images/o.jpg',
    'P': 'assets/alphabhet_images/p.jpg',
    'Q': 'assets/alphabhet_images/q.jpg',
    'R': 'assets/alphabhet_images/r.jpg',
    'S': 'assets/alphabhet_images/s.jpg',
    'T': 'assets/alphabhet_images/t.jpg',
    'U': 'assets/alphabhet_images/u.jpg',
    'V': 'assets/alphabhet_images/v.jpg',
    'W': 'assets/alphabhet_images/w.jpg',
    'X': 'assets/alphabhet_images/x.jpg',
    'Y': 'assets/alphabhet_images/y.jpg',
    'Z': 'assets/alphabhet_images/z.jpg',
  };

  final Map<String, String> alphabetSounds = {
    'A': 'assets/audio/a.mp3',
    'B': 'assets/audio/b.mp3',
    'C': 'assets/audio/c.mp3',
    'D': 'assets/audio/d.mp3',
    'E': 'assets/audio/e.mp3',
    'F': 'assets/audio/f.mp3',
    'G': 'assets/audio/g.mp3',
    'H': 'assets/audio/h.mp3',
    'I': 'assets/audio/i.mp3',
    'J': 'assets/audio/j.mp3',
    'K': 'assets/audio/k.mp3',
    'L': 'assets/audio/l.mp3',
    'M': 'assets/audio/m.mp3',
    'N': 'assets/audio/n.mp3',
    'O': 'assets/audio/o.mp3',
    'P': 'assets/audio/p.mp3',
    'Q': 'assets/audio/q.mp3',
    'R': 'assets/audio/r.mp3',
    'S': 'assets/audio/ss.mp3',
    'T': 'assets/audio/t.mp3',
    'U': 'assets/audio/u.mp3',
    'V': 'assets/audio/v.mp3',
    'W': 'assets/audio/w.mp3',
    'X': 'assets/audio/x.mp3',
    'Y': 'assets/audio/y.mp3',
    'Z': 'assets/audio/z.mp3',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Alphabets'),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  allAlphabets[currentIndex],
                  style: TextStyle(fontSize: 110.0),
                ),
                SizedBox(height: 20),
                Text(
                  wordsForAlphabets[currentIndex],
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(height: 20),
                Container(
                  width: 320.0,
                  height: 290.0,
                  child: Image.asset(
                    alphabetImages[allAlphabets[currentIndex]]!,
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:onPressedButton,
        child: Icon(Icons.volume_up),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2.0,
              child: Icon(Icons.home),
            ),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
            backgroundColor: Colors.green,
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0),
        onTap: (int index) {
          int newIndex = currentIndex;

          if (index == 0) {
            newIndex = (currentIndex - 1 + allAlphabets.length) % allAlphabets.length;
          } else if (index == 1) {
            newIndex = 0;
          } else if (index == 2) {
            newIndex = (currentIndex + 1) % allAlphabets.length;
          }

          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
