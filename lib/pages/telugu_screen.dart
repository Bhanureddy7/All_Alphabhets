import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TeluguScreen extends StatefulWidget {
  @override
  _TeluguScreenState createState() => _TeluguScreenState();
}

class _TeluguScreenState extends State<TeluguScreen> {
  int currentIndex = 0;

  late AudioPlayer _audioPlayer;

  @override
  void initState() {
  super.initState();
  _audioPlayer = AudioPlayer();
  }

  // Function to be called when the button is pressed
  void onPressedButton() async {
  var soundPath = alphabetSounds[allTeluguLetters[currentIndex]];
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

  final List<String> allTeluguLetters = [
    'అ', 'ఆ', 'ఇ', 'ఈ', 'ఉ', 'ఊ', 'ఋ', 'ఎ', 'ఏ', 'ఐ', 'ఒ', 'ఓ', 'ఔ',
    'క', 'ఖ', 'గ', 'ఘ',  'చ', 'ఛ', 'జ', 'ఝ' , 'ట', 'ఠ', 'డ', 'ఢ', 'ణ', 'త',
    'థ', 'ద', 'ధ', 'న', 'ప', 'ఫ', 'బ', 'భ', 'మ', 'య', 'ర', 'ల', 'వ', 'శ', 'ష', 'స', 'హ', 'ళ', 'క్ష',
    'ఱ',
  ];

  final wordsForTeluguLetters = [
    'అ - అమ్మ',
    'ఆ - ఆవు',
    'ఇ - ఇల్లు',
    'ఈ - ఈగ',
    'ఉ - ఉడుత',
    'ఊ - ఊయల',
    'ఋ - ఋషి',
    'ఎ - ఎలుక',
    'ఏ - ఏనుగు',
    'ఐ - ఐదు',
    'ఒ - ఒంటె',
    'ఓ - ఓడ',
    'ఔ - ఔషధము',
    'క - కలము',
    'ఖ - ఖరము',
    'గ - గడియారము',
    'ఘ - ఘటము',
    'చ - చక్రము',
    'ఛ - ఛత్రము',
    'జ - జలజము',
    'ఝ - ఝషము',
    'ట - టమాట',
    'ఠ - కంఠము',
    'డ - డమరుకము',
    'ఢ - డంకా.',
    'ణ - వీణ',
    'త - తలుపు',
    'థ - రథము',
    'ద - దండ',
    'ధ - ధనువు',
    'న - నగ',
    'ప - పలక',
    'ఫ - ఫలము',
    'బ - బంతి',
    'భ - భజన',
    'మ - మంచము',
    'య - యజ్ఞము',
    'ర - రవి',
    'ల - లత',
    'వ - వాలా',
    'శ - శంఖము',
    'ష - షట్కోణం',
    'స - సబ్బు',
    'హ - హంస',
    'ళ - తాళము',
    'క్ష - క్షత్రియుడు',
    'ఱ - అంపము',
  ];

  final Map<String, String> alphabetImages = {
    'అ': 'assets/teluguimages/అ.jpg',
    'ఆ': 'assets/teluguimages/ఆ.jpg',
    'ఇ': 'assets/teluguimages/ఇ.jpeg',
    'ఈ': 'assets/teluguimages/ఈ.jpeg',
    'ఉ': 'assets/teluguimages/ఉ.jpeg',
    'ఊ': 'assets/teluguimages/ఊ.jpg',
    'ఋ': 'assets/teluguimages/ఋ.jpeg',
    'ఎ': 'assets/teluguimages/ఎ.jpg',
    'ఏ': 'assets/teluguimages/ఏ.jpeg',
    'ఐ': 'assets/teluguimages/ఐ.jpeg',
    'ఒ': 'assets/teluguimages/ఒ.jpg',
    'ఓ': 'assets/teluguimages/ఓ.jpeg',
    'ఔ': 'assets/teluguimages/ఔ.jpg',
    'క': 'assets/teluguimages/క.jpg',
    'ఖ': 'assets/teluguimages/ఖ.jpeg',
    'గ': 'assets/teluguimages/గ.jpeg',
    'ఘ': 'assets/teluguimages/ఘ.jpg',
    'చ': 'assets/teluguimages/చ.jpeg',
    'ఛ': 'assets/teluguimages/ఛ.jpeg',
    'జ': 'assets/teluguimages/జ.jpeg',
    'ఝ': 'assets/teluguimages/ఝ.jpeg',
    'ట': 'assets/teluguimages/ట.jpg',
    'ఠ': 'assets/teluguimages/ఠ.jpg',
    'డ': 'assets/teluguimages/డ.jpg',
    'ఢ': 'assets/teluguimages/ఢ.jpeg',
    'ణ': 'assets/teluguimages/ణ.jpeg',
    'త': 'assets/teluguimages/త.jpg',
    'థ': 'assets/teluguimages/థ.jpg',
    'ద': 'assets/teluguimages/ద.jpg',
    'ధ': 'assets/teluguimages/ధ.jpeg',
    'న': 'assets/teluguimages/న.jpg',
    'ప': 'assets/teluguimages/ప.jpg',
    'ఫ': 'assets/teluguimages/ఫ.jpeg',
    'బ': 'assets/teluguimages/బ.jpg',
    'భ': 'assets/teluguimages/భ.jpeg',
    'మ': 'assets/teluguimages/మ.jpg',
    'య': 'assets/teluguimages/య.jpeg',
    'ర': 'assets/teluguimages/ర.jpg',
    'ల': 'assets/teluguimages/ల.jpg',
    'వ': 'assets/teluguimages/వ.jpeg',
    'శ': 'assets/teluguimages/శ.jpg',
    'ష': 'assets/teluguimages/ష.png',
    'స': 'assets/teluguimages/స.jpg',
    'హ': 'assets/teluguimages/హ.jpeg',
    'ళ': 'assets/teluguimages/ళ.jpg',
    'క్ష': 'assets/teluguimages/క్ష.jpg',
    'ఱ': 'assets/teluguimages/ఱ.jpg',
  };
  final Map<String, String> alphabetSounds = {
    'అ': 'assets/audio/telugu_audio/అ.wav',
    'ఆ': 'assets/audio/telugu_audio/ఆ.wav',
    'ఇ': 'assets/audio/telugu_audio/ఇ.wav',
    'ఈ': 'assets/audio/telugu_audio/ఈ.wav',
    'ఉ': 'assets/audio/telugu_audio/ఉ.wav',
    'ఊ': 'assets/audio/telugu_audio/ఊ.wav',
    'ఋ': 'assets/audio/telugu_audio/ఋ.wav',
    'ఎ': 'assets/audio/telugu_audio/ఎ.wav',
    'ఏ': 'assets/audio/telugu_audio/ఏ.wav',
    'ఐ': 'assets/audio/telugu_audio/ఐ.wav',
    'ఒ': 'assets/audio/telugu_audio/ఒ.wav',
    'ఓ': 'assets/audio/telugu_audio/ఓ.wav',
    'ఔ': 'assets/audio/telugu_audio/ఔ.wav',
    'క': 'assets/audio/telugu_audio/క.wav',
    'ఖ': 'assets/audio/telugu_audio/ఖ.wav',
    'గ': 'assets/audio/telugu_audio/గ.wav',
    'ఘ': 'assets/audio/telugu_audio/ఘ.wav',
    'ఙ': 'assets/audio/telugu_audio/ఙ.wav',
    'చ': 'assets/audio/telugu_audio/చ.wav',
    'ఛ': 'assets/audio/telugu_audio/ఛ.wav',
    'జ': 'assets/audio/telugu_audio/జ.wav',
    'ఝ': 'assets/audio/telugu_audio/ఝ.wav',
    'ఞ': 'assets/audio/telugu_audio/ఞ.wav',
    'ట': 'assets/audio/telugu_audio/ట.wav',
    'ఠ': 'assets/audio/telugu_audio/ఠ.wav',
    'డ': 'assets/audio/telugu_audio/డ.wav',
    'ఢ': 'assets/audio/telugu_audio/ఢ.wav',
    'ణ': 'assets/audio/telugu_audio/ణ.wav',
    'త': 'assets/audio/telugu_audio/త.wav',
    'థ': 'assets/audio/telugu_audio/థ.wav',
    'ద': 'assets/audio/telugu_audio/ద.wav',
    'ధ': 'assets/audio/telugu_audio/ధ.wav',
    'న': 'assets/audio/telugu_audio/న.wav',
    'ప': 'assets/audio/telugu_audio/ప.wav',
    'ఫ': 'assets/audio/telugu_audio/ఫ.wav',
    'బ': 'assets/audio/telugu_audio/బ.wav',
    'భ': 'assets/audio/telugu_audio/భ.wav',
    'మ': 'assets/audio/telugu_audio/మ.wav',
    'య': 'assets/audio/telugu_audio/య.wav',
    'ర': 'assets/audio/telugu_audio/ర.wav',
    'ల': 'assets/audio/telugu_audio/ల.wav',
    'వ': 'assets/audio/telugu_audio/వ.wav',
    'శ': 'assets/audio/telugu_audio/శ.wav',
    'ష': 'assets/audio/telugu_audio/షb.wav',
    'స': 'assets/audio/telugu_audio/సa.wav',
    'హ': 'assets/audio/telugu_audio/హ.wav',
    'ళ': 'assets/audio/telugu_audio/ళ.wav',
    'క్ష': 'assets/audio/telugu_audio/క్ష.wav',
    'ఱ': 'assets/audio/telugu_audio/ఱ.wav',
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('తెలుగు అక్షరాలు'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  children: [
                    Text(
                      allTeluguLetters.isNotEmpty ? allTeluguLetters[currentIndex] : '',
                      style: TextStyle(fontSize: 110.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                wordsForTeluguLetters.isNotEmpty ? wordsForTeluguLetters[currentIndex] : '',
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
          Container(
            width: 320.0,  // Set the width of the Container
            height: 290.0, // Set the height of the Container
            child: Image.asset(
              alphabetImages[allTeluguLetters[currentIndex]]!,
              width: 200.0,  // Set the width of the Image
              height: 200.0, // Set the height of the Image
              fit: BoxFit.cover, // You can adjust the BoxFit property based on your needs
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
      floatingActionButton: FloatingActionButton(
        onPressed:onPressedButton,
        child: Icon(Icons.volume_up),
        backgroundColor: Colors.green,
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Previous',
            // Telugu word for Previous
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 2.0,
              child: Icon(Icons.home),
            ),
            label: 'Home', // Telugu word for Home
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next', // Telugu word for Next
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
            newIndex = (currentIndex - 1 + allTeluguLetters.length) % allTeluguLetters.length;
          } else if (index == 1) {
            // Home button
            newIndex = 0;
          } else if (index == 2) {
            newIndex = (currentIndex + 1) % allTeluguLetters.length;
          }

          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
