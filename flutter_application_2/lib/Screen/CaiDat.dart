import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';

class CaiDat extends StatefulWidget {
  const CaiDat({super.key});

  @override
  State<CaiDat> createState() => _CaiDatState();
}

class _CaiDatState extends State<CaiDat> {
  double brightness =0.0;
  bool toggle=false;

Future<void>initPlatformBrightness()async{
  double bright;
  try{
    bright=await FlutterScreenWake.brightness;
  }
  on PlatformException{
    bright=1.0;
  }
  if(!mounted)return;
  setState(() {
    brightness=bright;
  });
}

  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();
     initPlatformBrightness();
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
           width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
             decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/caidat.png'), fit: BoxFit.cover),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Âm thanh       ',style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),),
                          CircleAvatar(
                            radius: 25,
                            child: IconButton(
                            icon: Icon(
                             isPlaying ? Icons.pause : Icons.play_arrow,
                            ),
                               onPressed: (){
                               if(isPlaying)
                             {
                                 player.pause();
                              }
                              else{
                               player.play(AssetSource('1.mp3'));
                      }
                    },
                  ),
                ),
                        ]
                        ),
                    ),
            Row(
              children: [
                AnimatedCrossFade(
              firstChild: Icon(Icons.brightness_7,size: 40,), 
              secondChild: Icon(Icons.brightness_3,size: 40,), 
              crossFadeState: toggle?CrossFadeState.showSecond:CrossFadeState.showFirst, 
              duration: Duration(seconds: 1)  
              ),
            Expanded(
              child: Slider(
                value: brightness,
                onChanged: (value){
                  setState(() {
                    brightness=value;
                  });
                  FlutterScreenWake.setBrightness(brightness);
                  if(brightness==0){
                    toggle=true;
                  }
                  else{
                    toggle=false;
                  }
                },
              )
              ),
              ],
            ),
            Text('Độ sáng',style: TextStyle(color: Colors.yellow),)
          ],
        ),
        )
      )
    );
  }
}