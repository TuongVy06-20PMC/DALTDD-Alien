import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/batdau.dart';
import 'package:flutter_application_2/object/users.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_application_2/component/contact_object.dart' as prefix;
import 'package:flutter_application_2/component/contact_provider.dart';
import 'dart:math';
import 'dart:async';
import 'KetThucLuotChoi.dart';
import 'Level.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../object/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../object/users.dart' as user;
import '../component/level.dart';

class BatDauChoi extends StatefulWidget {
  BatDauChoi({super.key, required this.level});
  int level;

  @override
  State<BatDauChoi> createState() => _BatDauChoiState();
}

class _BatDauChoiState extends State<BatDauChoi> {
  Future<List<dynamic>> _LoadDanhSach() async {
    final data;

    data = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    return data;
  }

  String id = "";
  Future<User> _LoadNguoiDung() async {
    final data =
        await FirebaseFirestore.instance.collection('users').doc("$id");
    final snap = await data.get();

    return User.fromJson(snap.data()!);
  }

  get_id() async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    id = cookie.getString('id') != null ? cookie.getString('id')! : '';
    setState(() {});
  }

  @override
  void initState() {
    get_id();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //khi bàn phím xuất hiện sẽ không làm vỡ layout của giao diện
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/background2.png'), fit: BoxFit.fill),
        ),
        child: FutureBuilder(
          future: _LoadDanhSach(),
          builder:
              (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot1) {
            if (snapshot1.hasData) {
              return FutureBuilder(
                future: _LoadNguoiDung(),
                builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("Kết nối có lỗi"),
                    );
                  }
                  if (snapshot.hasData) {
                    return Choi(
                      question: snapshot1.data![this.widget.level - 1].queries,
                      cap: this.widget.level,
                      xu: snapshot.data!.xu,
                      kinhnghiem: snapshot.data!.kinhnghiem,
                    );
                  } else
                    return Center(child: CircularProgressIndicator());
                },
              );
            } else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class Choi extends StatefulWidget {
  Choi(
      {super.key,
      required this.cap,
      required this.xu,
      required this.kinhnghiem,
      required this.question});
  int cap;
  int xu;
  int kinhnghiem;
  List<prefix.Query> question;

  @override
  State<Choi> createState() => _ChoiState();
}

class _ChoiState extends State<Choi> {
  int coin = 0;
  int coinplus = 0;
  int index = 0;
  int score = 0;
  int exp = 0;
  List<prefix.Query> question = [];
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
  int time = 115000;
  int x2score = 0;
  void start() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (time >= 0) {
        setState(() {
          time--;
          updatecoin();
        });
      } else {
        showDialog(
            context: context,
            builder: (context) => KetThuc(
                  cap: widget.cap,
                  xu: score,
                  kinhnghiem: exp,
                  question: widget.question,
                ));
        timer.cancel();
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
    int stt = 0;
    for (int i = 0; i < 4; i++) {
      if (question[index].answers[i].score == false) {
        if (i == 0) option1 = false;
        if (i == 1) option2 = false;
        if (i == 2) option3 = false;
        if (i == 3) option4 = false;
        stt++;
      }
      if (stt == 2) break;
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
    coin = this.coin;
    start();
    setState(() {});
    updatecoin();
    super.initState();
  }

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  Color? color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
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
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          width: MediaQuery.of(context).size.width / 1.2,
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
                          padding:
                              EdgeInsets.only(top: 25, right: 60, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                          time > 0 ? time.toString() : "0",
                                          style: TextStyle(
                                              fontFamily: 'LinotteBold',
                                              fontSize: 22),
                                        )
                                      ],
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(right: 10),
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
                                              fontFamily: 'LinotteBold',
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
                                    margin: EdgeInsets.only(bottom: 5),
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
                                          color: HexColor('614400'), width: 3),
                                      borderRadius: BorderRadius.circular(20),
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
                                width: MediaQuery.of(context).size.width - 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
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
                                    margin: EdgeInsets.only(bottom: 5),
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
                                          color: HexColor('614400'), width: 3),
                                      borderRadius: BorderRadius.circular(20),
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
                                width: MediaQuery.of(context).size.width - 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
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
                                    margin: EdgeInsets.only(bottom: 5),
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
                                          color: HexColor('614400'), width: 3),
                                      borderRadius: BorderRadius.circular(20),
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
                                width: MediaQuery.of(context).size.width - 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
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
                                    margin: EdgeInsets.only(bottom: 5),
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
                                          color: HexColor('614400'), width: 3),
                                      borderRadius: BorderRadius.circular(20),
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
                                width: MediaQuery.of(context).size.width - 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (function_5050) {
                                      function5050();
                                      function_5050 = false;
                                      setState(() {});
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: function_5050
                                              ? AssetImage('assets/remove.png')
                                              : AssetImage(
                                                  'assets/close-option.png'),
                                          fit: BoxFit.fill),
                                    ),
                                    child: Text(
                                      '50:50',
                                      style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '100',
                                      style: TextStyle(
                                        fontFamily: "Mono",
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/50.png',
                                      width: 30,
                                      height: 30,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 23),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: HexColor('FF0075'),
                                      minimumSize: Size(80, 80),
                                      /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                    ),
                                    child: Container(
                                        padding: const EdgeInsets.only(
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
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'LinotteBold',
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
                                      backgroundColor: HexColor('3EC70B'),
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
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'LinotteBold',
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

class KetThuc extends StatefulWidget {
  KetThuc(
      {super.key,
      required this.cap,
      required this.xu,
      required this.kinhnghiem,
      required this.question});
  int cap;
  int xu;
  int kinhnghiem;
  List<prefix.Query> question;

  @override
  State<KetThuc> createState() => _KetThucState();
}

class _KetThucState extends State<KetThuc> {
  String id = "";
  Future<User> get_id() async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    id = cookie.getString('id') != null ? cookie.getString('id')! : '';
    final data =
        await FirebaseFirestore.instance.collection('users').doc("$id");
    final snap = await data.get();
    final acc = User.fromJson(snap.data()!);
    int capcu = acc.cap;
    int tangkn = percentexp(acc);
    int nowkn = acc.kinhnghiem + widget.kinhnghiem;
    int tongxu = widget.xu;
    if (nowkn >= tangkn) {
      capcu++;
      tangkn = nowkn - tangkn;
      data.update({'xu': tongxu, 'kinhnghiem': tangkn, 'cap': capcu});
    } else {
      data.update({'xu': tongxu, 'kinhnghiem': nowkn});
    }
    if (this.widget.question == 1) {
      final data1 = await FirebaseFirestore.instance
          .collection('objecthistories')
          .doc("$id");
      final snap1 = await data.get();
      int i = widget.cap;
      data1.update({'cap${i + 1}': true, 'xu${i}': widget.xu});
    }
    return acc;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: FutureBuilder(
            future: get_id(),
            builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("Kết nối có lỗi"),
                );
              }
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      '${this.widget.xu} so xu',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              } else
                return Center(child: CircularProgressIndicator());
            }));
  }
}
