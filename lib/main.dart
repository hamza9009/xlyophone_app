import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const hello());
}

class hello extends StatefulWidget {

  const hello({Key? key}) : super(key: key);

  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {
  final player = AudioPlayer();

  Future<void> playsound(int soundnumber) async {

   await player.setSource(AssetSource('assets/note$soundnumber.wav'));
   await player.play(DeviceFileSource("assets/note$soundnumber.wav")); // will immediately start playing
  }

  Expanded buildkey(Color colorr,int soundnum){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(colorr)),
        child: Text(""),


    onPressed: (){


      playsound(soundnum);


    },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(Colors.cyan,1),
                buildkey(Colors.red,2),
                buildkey(Colors.yellow,3),
                buildkey(Colors.black,4),
                buildkey(Colors.blue,5),
                buildkey(Colors.green,6),
                buildkey(Colors.grey,7),
              ],
            ),
            ),
          ),
        );
      // or si

  }
}


class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextButton(
            child: Text("bfbhbfbrr"),

            onPressed: (){

            },
          ),
        ),
      )
        // or si
    );
  }
}
