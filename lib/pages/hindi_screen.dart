import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HindiScreen extends StatefulWidget {
  @override
  _HindiScreenState createState() => _HindiScreenState();
}

class _HindiScreenState extends State<HindiScreen> {
  int currentIndex = 0;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  // Function to be called when the button is pressed
  void onPressedButton() async {
    var soundPath = alphabetSounds[allHindiLetters[currentIndex]];
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

  final List<String> allHindiLetters = [
    'अ', 'आ', 'इ', 'ई', 'उ', 'ऊ', 'ऋ', 'ए', 'ऐ', 'ओ', 'औ', 'अं',
    'क', 'ख', 'ग', 'घ',  'च', 'छ', 'ज', 'झ',  'ट', 'ठ', 'ड', 'ढ',  'त',
    'थ', 'द', 'ध', 'न', 'प', 'फ', 'ब', 'भ', 'म', 'य', 'र', 'ल', 'व', 'श', 'ष', 'स', 'ह', 'क्ष',
    'त्र','ज्ञ',
  ];
  final Map<String, String> alphabetSounds = {
    'अ': 'assets/audio/telugu_audio/అ.wav',
    'आ': 'assets/audio/telugu_audio/ఆ.wav',
    'इ': 'assets/audio/telugu_audio/ఇ.wav',
    'ई': 'assets/audio/telugu_audio/ఈ.wav',
    'उ': 'assets/audio/telugu_audio/ఉ.wav',
    'ऊ': 'assets/audio/telugu_audio/ఊ.wav',
    'ऋ': 'assets/audio/telugu_audio/ఋ.wav',
    'ए': 'assets/audio/telugu_audio/ఎ.wav',
    'ऐ': 'assets/audio/telugu_audio/ఏ.wav',
    'ओ': 'assets/audio/telugu_audio/ఒ.wav',
    'औ': 'assets/audio/telugu_audio/ఔ.wav',
    'अं': 'assets/audio/telugu_audio/am.mpeg',
    'क': 'assets/audio/telugu_audio/క.wav',
    'ख': 'assets/audio/telugu_audio/ఖ.wav',
    'ग': 'assets/audio/telugu_audio/గ.wav',
    'घ': 'assets/audio/telugu_audio/ఘ.wav',
    'च': 'assets/audio/telugu_audio/చ.wav',
    'छ': 'assets/audio/telugu_audio/ఛ.wav',
    'ज': 'assets/audio/telugu_audio/జ.wav',
    'झ': 'assets/audio/telugu_audio/ఝ.wav',
    'ट': 'assets/audio/telugu_audio/ట.wav',
    'ठ': 'assets/audio/telugu_audio/ఠ.wav',
    'ड': 'assets/audio/telugu_audio/డ.wav',
    'ढ': 'assets/audio/telugu_audio/ఢ.wav',
    'ण': 'assets/audio/telugu_audio/ణ.wav',
    'त': 'assets/audio/telugu_audio/త.wav',
    'थ': 'assets/audio/telugu_audio/థ.wav',
    'द': 'assets/audio/telugu_audio/ద.wav',
    'ध': 'assets/audio/telugu_audio/ధ.wav',
    'न': 'assets/audio/telugu_audio/న.wav',
    'प': 'assets/audio/telugu_audio/ప.wav',
    'फ': 'assets/audio/telugu_audio/ఫ.wav',
    'ब': 'assets/audio/telugu_audio/బ.wav',
    'भ': 'assets/audio/telugu_audio/భ.wav',
    'म': 'assets/audio/telugu_audio/మ.wav',
    'य': 'assets/audio/telugu_audio/య.wav',
    'र': 'assets/audio/telugu_audio/ర.wav',
    'ल': 'assets/audio/telugu_audio/ల.wav',
    'व': 'assets/audio/telugu_audio/వ.wav',
    'श': 'assets/audio/telugu_audio/శ.wav',
    'ष': 'assets/audio/telugu_audio/షb.wav',
    'स': 'assets/audio/telugu_audio/సa.wav',
    'ह': 'assets/audio/telugu_audio/హ.wav',
    'क्ष': 'assets/audio/telugu_audio/క్ష.wav',
    'त्र': 'assets/audio/telugu_audio/thra.mpeg',
    'ज्ञ': 'assets/audio/telugu_audio/jnaa.mpeg',
  };


  // Extended list of words for each Hindi letter
  final wordsForHindiLetters = [
    'अ - अनार',
    'आ - आम',
    'इ - इमली',
    'ई - ईख',
    'उ - उल्लू',
    'ऊ - ऊन',
    'ऋ - ऋषि',
    'ए -एड़ी',
    'ऐ - ऐनक',
    'ओ - ओखली',
    'औ - औरत',
    'अं - अंगूर',
    'क - कबूतर',
    'ख - खरगोश',
    'ग - गमला',
    'घ - घर',
    'च - चम्मच',
    'छ - छतरी',
    'ज - जहाज',
    'झ - झण्डा',
    'ट - टमाटर',
    'ठ -ठठेरा',
    'ड - डबल',
    'ढ -ढोलक',
    'त - तराजू',
    'थ - थाली',
    'द - दवात',
    'ध - धनुष',
    'न -नल',
    'प - पतंग',
    'फ -फल',
    'ब - बत्तख',
    'भ - भालू',
    'म -मछली',
    'य - यज्ञ',
    'र - रथ',
    'ल - लड़की',
    'व - वन',
    'श -शरबत',
    'ष - षट्कोण',
    'स - सब्जी',
    'ह -हथौड़ा',
    'क्ष - क्षत्रियत्र',
    'त्र -त्रिशूल',
    'ज्ञ -्ञानी',
  ];

  final Map<String, String> hindiAlphabetImages = {
    'अ': 'assets/hindiimages/अ.jpeg',
    'आ': 'assets/hindiimages/आ.jpg',
    'इ': 'assets/hindiimages/इ.jpeg',
    'ई': 'assets/hindiimages/ई.jpeg',
    'उ': 'assets/hindiimages/उ.jpeg',
    'ऊ': 'assets/hindiimages/ऊ.jpeg',
    'ऋ': 'assets/hindiimages/ऋ.jpeg',
    'ए': 'assets/hindiimages/ए.jpg',
    'ऐ': 'assets/hindiimages/ऐ.jpeg',
    'ओ': 'assets/hindiimages/ओ.jpeg',
    'औ': 'assets/hindiimages/औ.jpeg',
    'अं': 'assets/hindiimages/अं.jpg',
    'क': 'assets/hindiimages/क.jpg',
    'ख': 'assets/hindiimages/ख.jpg',
    'ग': 'assets/hindiimages/ग.jpg',
    'घ': 'assets/hindiimages/घ.jpeg',
    'च': 'assets/hindiimages/च.jpg',
    'छ': 'assets/hindiimages/छ.jpeg',
    'ज': 'assets/hindiimages/ज.jpeg',
    'झ': 'assets/hindiimages/झ.jpg',
    'ट': 'assets/hindiimages/ट.jpg',
    'ठ': 'assets/hindiimages/ठ.jpeg',
    'ड': 'assets/hindiimages/ड.jpg',
    'ढ': 'assets/hindiimages/ढ.jpg',
    'त': 'assets/hindiimages/त.jpg',
    'थ': 'assets/hindiimages/थ.jpeg',
    'द': 'assets/hindiimages/द.jpg',
    'ध': 'assets/hindiimages/ध.jpeg',
    'न': 'assets/hindiimages/न.jpg',
    'प': 'assets/hindiimages/प.jpg',
    'फ': 'assets/hindiimages/फ.jpeg',
    'ब': 'assets/hindiimages/ब.jpeg',
    'भ': 'assets/hindiimages/भ.jpg',
    'म': 'assets/hindiimages/म.jpeg',
    'य': 'assets/hindiimages/य.jpeg',
    'र': 'assets/hindiimages/र.jpg',
    'ल': 'assets/hindiimages/ल.jpeg',
    'व': 'assets/hindiimages/व.jpeg',
    'श': 'assets/hindiimages/श.jpg',
    'ष': 'assets/hindiimages/ष.jpg',
    'स': 'assets/hindiimages/स.jpg',
    'ह': 'assets/hindiimages/ह.jpg',
    'क्ष': 'assets/hindiimages/क्ष.jpg',
    'त्र': 'assets/hindiimages/त्र.jpg',
    'ज्ञ': 'assets/hindiimages/ज्ञ.jpeg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('हिंदी अक्षर'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  allHindiLetters[currentIndex],
                  style: TextStyle(fontSize: 110.0),
                ),
              ),
              SizedBox(height: 20),
              Text(
                wordsForHindiLetters[currentIndex],
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 320.0,
                height: 290.0,
                child: hindiAlphabetImages[allHindiLetters[currentIndex]] != null
                    ? Image.asset(
                  hindiAlphabetImages[allHindiLetters[currentIndex]]!,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                )
                    : Placeholder(),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:onPressedButton,
        child: Icon(Icons.volume_up),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous', // Hindi word for Previous
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1.5,
              child: Icon(Icons.home),
            ),
            label: 'Home', // Hindi word for Home
            backgroundColor: Colors.green,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next', // Hindi word for Next
            backgroundColor: Colors.green,
          ),
        ],
        selectedItemColor: Colors.white, // Color for the selected item
        unselectedItemColor: Colors.white, // Color for unselected items
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0), // Style for the selected label
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.0),
        onTap: (int index) {
          int newIndex = currentIndex;

          if (index == 0) {
            newIndex = (currentIndex - 1 + allHindiLetters.length) % allHindiLetters.length;
          } else if (index == 1) {
            // Home button
            newIndex = 0;
          } else if (index == 2) {
            newIndex = (currentIndex + 1) % allHindiLetters.length;
          }

          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
