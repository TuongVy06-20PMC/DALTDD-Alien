import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_application_2/component/contact_object.dart';
import 'package:flutter_application_2/component/contact_provider.dart';
import 'dart:math';
import 'dart:async';
import 'KetThucLuotChoi.dart';
import 'Level.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Future<List<Level>> _LoadDanhSach() async {
    final data;
    data = await ContactProvider.getAllContacts();
    setState(() {});
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 0, right: 0),
      child: FutureBuilder(
        future:
            _LoadDanhSach(), // you should put here your method that call your web service
        builder: (BuildContext context, AsyncSnapshot<List<Level>> snapshot) {
          /// The snapshot data type have to be same of the result of your web service method
          if (snapshot.hasData) {
            /// When the result of the future call respond and has data show that data
            return BatDauChoi(question: snapshot.data![0].question);
          } else

            /// While is no data show this
            return Center(child: CircularProgressIndicator());
        },
      ),
    ));
    ;
  }
}

class BatDauChoi extends StatefulWidget {
  BatDauChoi({super.key, required this.question});
  List<Query> question;

  @override
  State<BatDauChoi> createState() => _BatDauChoiState();
}

class _BatDauChoiState extends State<BatDauChoi> {
  int coin = 0;
  int coinplus = 0;
  int index = 0;
  int score = 0;
  int exp = 0;
  List<Query> question = [];
  late bool anwser1 = question[index].answers[0].score;
  late bool anwser2 = question[index].answers[0].score;
  late bool anwser3 = question[index].answers[0].score;
  late bool anwser4 = question[index].answers[0].score;
  bool option1 = true;
  bool option2 = true;
  bool option3 = true;
  bool option4 = true;
  bool function_5050 = true;
  String youranwser = "";
  bool pick = false;
  int time = 60;
  int x2score = 0;
  void start() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (time >= 0) {
        setState(() {
          time--;
          updatecoin();
        });
      }
    });
  }

  void addcoin() {
    Random random = new Random();
    int randomNumber = random.nextInt(150) + 10;
    coinplus += randomNumber;
    setState(() {});
  }

  void onpress() {
    Future.delayed(const Duration(seconds: 2), () {
      index++;
      if (index == 10) {
        time = 0;
        index--;
      } else {
        anwser1 = question[index].answers[0].score;
        anwser2 = question[index].answers[0].score;
        anwser3 = question[index].answers[0].score;
        anwser4 = question[index].answers[0].score;
        option1 = true;
        option2 = true;
        option3 = true;
        option4 = true;
        pick = false;
        x2score = 0;
        youranwser = "";
      }
      updatecoin();
      setState(() {});
    });
  }

  void function5050() {
    coin -= 100;
    int a = 0;
    for (int i = 0; i < 4; i++) {
      if (question[index].answers[i].score == false) {
        if (i == 0) option1 = false;
        if (i == 1) option2 = false;
        if (i == 2) option3 = false;
        if (i == 3) option4 = false;
        a++;
      }
      if (a == 2) break;
    }
    updatecoin();
    setState(() {});
  }

  void updatecoin() {
    if (coin < 100) {
      function_5050 = false;
    }
  }

  @override
  void initState() {
    question = this.widget.question;
    print(question);
    start();
    setState(() {});
    super.initState();
  }

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  Color? color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: time == -1
            ? KetThucLuotChoi()
            : Container(
                decoration: const BoxDecoration(
                    //color: HexColor('0C205B')
                    image: DecorationImage(
                        image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 15),
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              /*border: Border.all(
                    width: 2,
                    color: Colors.white.withOpacity(0.5)
                  ),*/
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: (() {}),
                                        icon: Image.asset(
                                          'assets/left-arrow.png',
                                          height: 50,
                                          width: 50,
                                          color: HexColor('#FFDE00'),
                                        )),
                                    IconButton(
                                        onPressed: () =>
                                            _sKey.currentState?.openEndDrawer(),
                                        icon: Image.asset(
                                          'assets/menu.png',
                                          height: 40,
                                          width: 40,
                                          color: HexColor('FFDE00'),
                                        )),
                                  ],
                                ),
                                Container(
                                    padding: EdgeInsets.only(bottom: 15),
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            'Câu ${index + 1}/${question.length}',
                                            style: TextStyle(
                                                fontFamily: 'LinotteBold',
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                          height: 2.0,
                                          thickness: 2,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          widget.question[index].title,
                                          style: TextStyle(
                                              fontFamily: 'LinotteBold',
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ]),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 35),
                              //padding: EdgeInsets.all(20),
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 25, right: 60, bottom: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                right: 80,
                                              ),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.timelapse,
                                                    size: 30,
                                                    color: HexColor('FFC600'),
                                                  ),
                                                  Text(
                                                    time > 0
                                                        ? time.toString()
                                                        : "0",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 22),
                                                  )
                                                ],
                                              )),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.monetization_on,
                                                    size: 30,
                                                    color: HexColor('FFC600'),
                                                  ),
                                                  Text(
                                                    '$score'.toString(),
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 22),
                                                  )
                                                ],
                                              )),
                                        ]),
                                  ),
                                  option1
                                      ? InkWell(
                                          onTap: () {
                                            pick = true;
                                            youranwser = "opt1";
                                            if (this
                                                        .widget
                                                        .question[index]
                                                        .answers[0]
                                                        .score ==
                                                    true &&
                                                youranwser == "opt1") {
                                              addcoin();
                                              score += x2score + 30;
                                            }
                                            onpress();
                                            setState(() {});
                                          },
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5),
                                              padding: EdgeInsets.all(12),
                                              constraints: BoxConstraints(
                                                  minHeight: 30, minWidth: 350),
                                              decoration: BoxDecoration(
                                                color: pick
                                                    ? this
                                                            .widget
                                                            .question[index]
                                                            .answers[0]
                                                            .score
                                                        ? Colors.green
                                                        : Colors.red
                                                    : Colors.white,
                                                border: Border.all(
                                                    color: HexColor('614400'),
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                '${this.widget.question[index].answers[0].answerText}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Linotte',
                                                  color: Colors.black,
                                                ),
                                              )),
                                        )
                                      : Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              70,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                  option2
                                      ? InkWell(
                                          onTap: () {
                                            pick = true;
                                            youranwser = "opt2";
                                            if (this
                                                        .widget
                                                        .question[index]
                                                        .answers[1]
                                                        .score ==
                                                    true &&
                                                youranwser == "opt2") {
                                              addcoin();
                                              score += x2score + 30;
                                            }
                                            onpress();
                                            setState(() {});
                                          },
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5),
                                              padding: EdgeInsets.all(12),
                                              constraints: BoxConstraints(
                                                  minHeight: 30, minWidth: 350),
                                              decoration: BoxDecoration(
                                                color: pick
                                                    ? this
                                                            .widget
                                                            .question[index]
                                                            .answers[1]
                                                            .score
                                                        ? Colors.green
                                                        : Colors.red
                                                    : Colors.white,
                                                border: Border.all(
                                                    color: HexColor('614400'),
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                '${this.widget.question[index].answers[1].answerText}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Linotte',
                                                  color: Colors.black,
                                                ),
                                              )),
                                        )
                                      : Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              70,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                  option3
                                      ? InkWell(
                                          onTap: () {
                                            pick = true;
                                            youranwser = "opt3";
                                            if (this
                                                        .widget
                                                        .question[index]
                                                        .answers[2]
                                                        .score ==
                                                    true &&
                                                youranwser == "opt3") {
                                              addcoin();
                                              score += x2score + 30;
                                            }
                                            onpress();
                                            setState(() {});
                                          },
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5),
                                              padding: EdgeInsets.all(12),
                                              constraints: BoxConstraints(
                                                  minHeight: 30, minWidth: 350),
                                              decoration: BoxDecoration(
                                                color: pick
                                                    ? this
                                                            .widget
                                                            .question[index]
                                                            .answers[2]
                                                            .score
                                                        ? Colors.green
                                                        : Colors.red
                                                    : Colors.white,
                                                border: Border.all(
                                                    color: HexColor('614400'),
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                '${this.widget.question[index].answers[2].answerText}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Linotte',
                                                  color: Colors.black,
                                                ),
                                              )),
                                        )
                                      : Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              70,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                  option4
                                      ? InkWell(
                                          onTap: () {
                                            pick = true;
                                            youranwser = "opt4";
                                            if (this
                                                        .widget
                                                        .question[index]
                                                        .answers[3]
                                                        .score ==
                                                    true &&
                                                youranwser == "opt4") {
                                              addcoin();
                                              score += x2score + 30;
                                            }
                                            onpress();
                                            setState(() {});
                                          },
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5),
                                              padding: EdgeInsets.all(12),
                                              constraints: BoxConstraints(
                                                  minHeight: 30, minWidth: 350),
                                              decoration: BoxDecoration(
                                                color: pick
                                                    ? this
                                                            .widget
                                                            .question[index]
                                                            .answers[3]
                                                            .score
                                                        ? Colors.green
                                                        : Colors.red
                                                    : Colors.white,
                                                border: Border.all(
                                                    color: HexColor('614400'),
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                '${this.widget.question[index].answers[3].answerText}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Linotte',
                                                  color: Colors.black,
                                                ),
                                              )),
                                        )
                                      : Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              70,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                  Container(
                                      margin: EdgeInsets.only(top: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 23),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    HexColor('FF0000'),
                                                minimumSize: Size(80, 80),
                                                /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                              ),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2, right: 2),
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                        'assets/50.png',
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                      const Text(
                                                        '-100 xu',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'LinotteBold',
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              onPressed: () {},
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 23),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    HexColor('FF0075'),
                                                minimumSize: Size(80, 80),
                                                /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                              ),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2, right: 2),
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                        'assets/x2.png',
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                      const Text(
                                                        '-150 xu',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'LinotteBold',
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              onPressed: () {},
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    HexColor('3EC70B'),
                                                minimumSize: Size(80, 80),
                                                /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.all(0),
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                        'assets/boqua.png',
                                                        width: 48,
                                                        height: 48,
                                                      ),
                                                      const Text(
                                                        '-250 xu',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'LinotteBold',
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            const Positioned(
                                left: 20,
                                bottom: 450,
                                child: Image(
                                  image: AssetImage('assets/monster.png'),
                                  height: 100,
                                  width: 100,
                                )),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ));
  }
}
