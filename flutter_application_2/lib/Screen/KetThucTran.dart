import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/TimTran.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';
import 'Level.dart';

class KetThucTran extends StatefulWidget {
  const KetThucTran({super.key});

  @override
  State<KetThucTran> createState() => _KetThucTranState();
}

class _KetThucTranState extends State<KetThucTran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 50, top: 40),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 140,
                    ),
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrangChuTabBarGoogle()),
                            )
                          },
                          icon: Image.asset(
                            'assets/close-option.png',
                            color: HexColor('FFDE00'),
                          ),
                          iconSize: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'KẾT THÚC TRẬN',
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'FSAriston',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = HexColor('FFEE52'),
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'KẾT THÚC TRẬN',
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'FSAriston',
                          color: HexColor('000000'),
                        ),
                      ),
                    ],
                  )),
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            // margin: EdgeInsets.only(top: 20),
                            //padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height / 2.0,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/bg-menu.png'),
                                    fit: BoxFit.fill)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 78),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Bạn thắng!!',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 50,
                                            color: HexColor('0C1E7F'),
                                            shadows: [
                                              Shadow(
                                                  blurRadius: 5,
                                                  color: Colors.white,
                                                  offset: Offset(2.0, 2.5))
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 10, top: 25),
                                      child: Text(
                                        'Tổng số điểm: 700',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Số câu đúng: 7/10',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Số câu sai: 3/10',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Số điểm hiện có: 1700',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'Kinh nghiệm tích lũy: 200',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFF9CA'),
                                  side: BorderSide(
                                      width: 3, color: HexColor('614400')),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize: Size(70, 70),
                                  /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Xem lại',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XemlaiDapAn()),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFF9CA'),
                                  side: BorderSide(
                                      width: 3, color: HexColor('614400')),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize: Size(70, 70),
                                  /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      children: [
                                        /* Image.asset(
                                              'assets/eye-open.png',
                                              width: 30,
                                              height: 30,
                                            ),*/
                                        const Text(
                                          'Trận mới',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TimTran()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
