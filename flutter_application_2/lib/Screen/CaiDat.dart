import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';
import '../component/menu.dart';

class CaiDat extends StatefulWidget {
  const CaiDat({super.key});

  @override
  State<CaiDat> createState() => _CaiDatState();
}

class _CaiDatState extends State<CaiDat> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  double brightness = 0.0;
  bool toggle = false;
  double currentvol = 0.5;

  Future<void> initPlatformBrightness() async {
    double bright;
    try {
      bright = await FlutterScreenWake.brightness;
    } on PlatformException {
      bright = 1.0;
    }
    if (!mounted) return;
    setState(() {
      brightness = bright;
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
    PerfectVolumeControl.hideUI = false;
    Future.delayed(Duration.zero, () async {
      currentvol = await PerfectVolumeControl.getVolume();
      setState(() {});
    });

    PerfectVolumeControl.stream.listen((volume) {
      setState(() {
        currentvol = volume;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _sKey,
        body: Center(
            child: Container(
              padding: EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const TrangChu()),
                                  );
                                }),
                                icon: Image.asset(
                                  'assets/delete.png',
                                  height: 25,
                                  width: 25,
                                  color: HexColor('FFF323'),
                                )),
                          ]),
                      Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.cover,
                        height: 90,
                        width: 160,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Stack(
                            children: <Widget>[
                              // Stroked text as border.
                              Text(
                                'CÀI ĐẶT',
                                style: TextStyle(
                                  fontSize: 65,
                                  fontFamily: 'FSAriston',
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 5
                                    ..color = HexColor('FFEE52'),
                                ),
                              ),
                              // Solid text as fill.
                              Text(
                                'CÀI ĐẶT',
                                style: TextStyle(
                                  fontSize: 65,
                                  fontFamily: 'FSAriston',
                                  color: HexColor('000000'),
                                ),
                              ),
                            ],
                          )
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            padding: EdgeInsets.all(10),
                            width: 305,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white ,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.play_circle_sharp, size: 30, color: HexColor('0C205B'),),
                                      Text('Âm thanh', style: TextStyle(
                                        fontFamily: 'LinotteBold',
                                        fontSize: 15,
                                        color: HexColor('0C205B')
                                      ),)
                                    ],
                                  ),
                                  
                                  Expanded(
                                    child: Slider(
                                      activeColor: HexColor('FFEE52'),
                                      inactiveColor: Colors.amber[700],
                                      value: currentvol,
                                      onChanged: (newvol) {
                                        currentvol = newvol;
                                        PerfectVolumeControl.setVolume(
                                            newvol); //set new volume
                                        setState(() {});
                                      },
                                      min: 0, //
                                      max: 1,
                                      divisions: 100,
                                    ),
                                  ),
                                  InkWell(
                                    radius: 25,
                                    child: IconButton(
                                      icon: Icon(
                                        isPlaying
                                            ? Icons.music_note
                                            : Icons.music_off,
                                        size: 30,
                                        color: HexColor('0C205B'),
                                      ),
                                      onPressed: () {
                                        if (isPlaying) {
                                          player.pause();
                                        } else {
                                          player.play(AssetSource('1.mp3'));
                                        }
                                      },
                                    ),
                                  ),
                                ]),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: 305,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            AnimatedCrossFade(
                                firstChild:
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.brightness_7, size: 30,color: HexColor('0C205B'),),
                                      Text('Độ sáng', style: TextStyle(
                                        fontFamily: 'LinotteBold',
                                        fontSize: 15,
                                        color: HexColor('0C205B')
                                      ),)
                                    ],
                                  ),
                                
                                secondChild: Icon(
                                  Icons.brightness_3,
                                  size: 40,
                                ),
                                crossFadeState: toggle
                                    ? CrossFadeState.showSecond
                                    : CrossFadeState.showFirst,
                                duration: Duration(seconds: 1)),
                            Expanded(
                                child: Slider(
                                  activeColor: HexColor('FFEE52'),
                                      inactiveColor: Colors.amber[700],
                              value: brightness,
                              onChanged: (value) {
                                setState(() {
                                  brightness = value;
                                });
                                FlutterScreenWake.setBrightness(brightness);
                                if (brightness == 0) {
                                  toggle = true;
                                } else {
                                  toggle = false;
                                }
                              },
                            )),
                          ],
                        ),
                      ),
                    ])))));
  }
}
