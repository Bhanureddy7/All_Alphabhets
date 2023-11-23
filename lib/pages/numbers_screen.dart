import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class NumbersScreen extends StatefulWidget {
  @override
  _NumbersScreenState createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  int currentIndex = 0;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  // Function to be called when the button is pressed
  void onPressedButton() async {
    var soundPath = alphabetSounds[allNumbers[currentIndex]];
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

  final allNumbers = List.generate(100, (index) => (index + 1).toString());

  final wordsForNumbers = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
    'Twenty',
    'Twenty-One',
    'Twenty-Two',
    'Twenty-Three',
    'Twenty-Four',
    'Twenty-Five',
    'Twenty-Six',
    'Twenty-Seven',
    'Twenty-Eight',
    'Twenty-Nine',
    'Thirty',
    'Thirty-One',
    'Thirty-Two',
    'Thirty-Three',
    'Thirty-Four',
    'Thirty-Five',
    'Thirty-Six',
    'Thirty-Seven',
    'Thirty-Eight',
    'Thirty-Nine',
    'Forty',
    'Forty-One',
    'Forty-Two',
    'Forty-Three',
    'Forty-Four',
    'Forty-Five',
    'Forty-Six',
    'Forty-Seven',
    'Forty-Eight',
    'Forty-Nine',
    'Fifty',
    'Fifty-One',
    'Fifty-Two',
    'Fifty-Three',
    'Fifty-Four',
    'Fifty-Five',
    'Fifty-Six',
    'Fifty-Seven',
    'Fifty-Eight',
    'Fifty-Nine',
    'Sixty',
    'Sixty-One',
    'Sixty-Two',
    'Sixty-Three',
    'Sixty-Four',
    'Sixty-Five',
    'Sixty-Six',
    'Sixty-Seven',
    'Sixty-Eight',
    'Sixty-Nine',
    'Seventy',
    'Seventy-One',
    'Seventy-Two',
    'Seventy-Three',
    'Seventy-Four',
    'Seventy-Five',
    'Seventy-Six',
    'Seventy-Seven',
    'Seventy-Eight',
    'Seventy-Nine',
    'Eighty',
    'Eighty-One',
    'Eighty-Two',
    'Eighty-Three',
    'Eighty-Four',
    'Eighty-Five',
    'Eighty-Six',
    'Eighty-Seven',
    'Eighty-Eight',
    'Eighty-Nine',
    'Ninety',
    'Ninety-One',
    'Ninety-Two',
    'Ninety-Three',
    'Ninety-Four',
    'Ninety-Five',
    'Ninety-Six',
    'Ninety-Seven',
    'Ninety-Eight',
    'Ninety-Nine',
    'One Hundred',
  ];

  // Map of number sounds with corresponding audio file paths
  final Map<String, String> alphabetSounds = {
    '1': 'assets/audio/number_audio/1.wav',
    '2': 'assets/audio/number_audio/2.wav',
    '3': 'assets/audio/number_audio/3.wav',
    '4': 'assets/audio/number_audio/4.wav',
    '5': 'assets/audio/number_audio/5.wav',
    '6': 'assets/audio/number_audio/6.wav',
    '7': 'assets/audio/number_audio/7.wav',
    '8': 'assets/audio/number_audio/8.wav',
    '9': 'assets/audio/number_audio/9.wav',
    '10': 'assets/audio/number_audio/10.wav',
    '11': 'assets/audio/number_audio/11.wav',
    '12': 'assets/audio/number_audio/12.wav',
    '13': 'assets/audio/number_audio/13.wav',
    '14': 'assets/audio/number_audio/14.wav',
    '15': 'assets/audio/number_audio/15.wav',
    '16': 'assets/audio/number_audio/16.wav',
    '17': 'assets/audio/number_audio/17.wav',
    '18': 'assets/audio/number_audio/18.wav',
    '19': 'assets/audio/number_audio/19.wav',
    '20': 'assets/audio/number_audio/20.wav',
    '21': 'assets/audio/number_audio/21.wav',
    '22': 'assets/audio/number_audio/22.wav',
    '23': 'assets/audio/number_audio/23.wav',
    '24': 'assets/audio/number_audio/24.wav',
    '25': 'assets/audio/number_audio/25.wav',
    '26': 'assets/audio/number_audio/26.wav',
    '27': 'assets/audio/number_audio/27.wav',
    '28': 'assets/audio/number_audio/28.wav',
    '29': 'assets/audio/number_audio/29.wav',
    '30': 'assets/audio/number_audio/30.wav',
    '31': 'assets/audio/number_audio/31.wav',
    '32': 'assets/audio/number_audio/32.wav',
    '33': 'assets/audio/number_audio/33.wav',
    '34': 'assets/audio/number_audio/34.wav',
    '35': 'assets/audio/number_audio/35.wav',
    '36': 'assets/audio/number_audio/36.wav',
    '37': 'assets/audio/number_audio/37.wav',
    '38': 'assets/audio/number_audio/38.wav',
    '39': 'assets/audio/number_audio/39.wav',
    '40': 'assets/audio/number_audio/40.wav',
    '41': 'assets/audio/number_audio/41.wav',
    '42': 'assets/audio/number_audio/42.wav',
    '43': 'assets/audio/number_audio/43.wav',
    '44': 'assets/audio/number_audio/44.wav',
    '45': 'assets/audio/number_audio/45.wav',
    '46': 'assets/audio/number_audio/46.wav',
    '47': 'assets/audio/number_audio/47.wav',
    '48': 'assets/audio/number_audio/48.wav',
    '49': 'assets/audio/number_audio/49.wav',
    '50': 'assets/audio/number_audio/50.wav',
    '51': 'assets/audio/number_audio/51.wav',
    '52': 'assets/audio/number_audio/52.wav',
    '53': 'assets/audio/number_audio/53.wav',
    '54': 'assets/audio/number_audio/54.wav',
    '55': 'assets/audio/number_audio/55.wav',
    '56': 'assets/audio/number_audio/56.wav',
    '57': 'assets/audio/number_audio/57.wav',
    '58': 'assets/audio/number_audio/58.wav',
    '59': 'assets/audio/number_audio/59.wav',
    '60': 'assets/audio/number_audio/60.wav',
    '61': 'assets/audio/number_audio/61.wav',
    '62': 'assets/audio/number_audio/62.wav',
    '63': 'assets/audio/number_audio/63.wav',
    '64': 'assets/audio/number_audio/64.wav',
    '65': 'assets/audio/number_audio/65.wav',
    '66': 'assets/audio/number_audio/66.wav',
    '67': 'assets/audio/number_audio/67.wav',
    '68': 'assets/audio/number_audio/68.wav',
    '69': 'assets/audio/number_audio/69.wav',
    '70': 'assets/audio/number_audio/70.wav',
    '71': 'assets/audio/number_audio/71.wav',
    '72': 'assets/audio/number_audio/72.wav',
    '73': 'assets/audio/number_audio/73.wav',
    '74': 'assets/audio/number_audio/74.wav',
    '75': 'assets/audio/number_audio/75.wav',
    '76': 'assets/audio/number_audio/76.wav',
    '77': 'assets/audio/number_audio/77.wav',
    '78': 'assets/audio/number_audio/78.wav',
    '79': 'assets/audio/number_audio/79.wav',
    '80': 'assets/audio/number_audio/80.wav',
    '81': 'assets/audio/number_audio/81.wav',
    '82': 'assets/audio/number_audio/82.wav',
    '83': 'assets/audio/number_audio/83.wav',
    '84': 'assets/audio/number_audio/84.wav',
    '85': 'assets/audio/number_audio/85.wav',
    '86': 'assets/audio/number_audio/86.wav',
    '87': 'assets/audio/number_audio/87.wav',
    '88': 'assets/audio/number_audio/88.wav',
    '89': 'assets/audio/number_audio/89.wav',
    '90': 'assets/audio/number_audio/90.wav',
    '91': 'assets/audio/number_audio/91.wav',
    '92': 'assets/audio/number_audio/92.wav',
    '93': 'assets/audio/number_audio/93.wav',
    '94': 'assets/audio/number_audio/94.wav',
    '95': 'assets/audio/number_audio/95.wav',
    '96': 'assets/audio/number_audio/96.wav',
    '97': 'assets/audio/number_audio/97.wav',
    '98': 'assets/audio/number_audio/98.wav',
    '99': 'assets/audio/number_audio/99.wav',
    '100': 'assets/audio/number_audio/100.wav',
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              allNumbers[currentIndex],
              style: TextStyle(fontSize: 130.0),
            ),
            SizedBox(height: 20.0),
            Text(
              wordsForNumbers[currentIndex],
              style: TextStyle(fontSize: 45.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressedButton,
        child: Icon(Icons.volume_up),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
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
            newIndex = (currentIndex - 1) % allNumbers.length;
            if (newIndex < 0) {
              newIndex = allNumbers.length - 1;
            }
          } else if (index == 1) {
            newIndex = 0;
          } else if (index == 2) {
            newIndex = (currentIndex + 1) % allNumbers.length;
          }

          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
