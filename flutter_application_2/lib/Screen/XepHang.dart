import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class XepHang extends StatefulWidget {
  const XepHang({super.key});

  @override
  State<XepHang> createState() => _XepHangState();
}

class _XepHangState extends State<XepHang> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _sKey,
        endDrawer: Menu(),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
          //color: HexColor('0C205B')
          image: DecorationImage(
              image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50, top: 20),
                      child: Image.asset(
                        'assets/logo.png',
                        width: 130,
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
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20, bottom: 10),
                        child: Stack(
                          children: <Widget>[
                            // Stroked text as border.
                            Text(
                              'BẢNG XẾP HẠNG',
                              style: TextStyle(
                                fontSize: 50,
                                fontFamily: 'FSAriston',
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5
                                  ..color = HexColor('FFEE52'),
                              ),
                            ),
                            // Solid text as fill.
                            Text(
                              'BẢNG XẾP HẠNG',
                              style: TextStyle(
                                fontSize: 50,
                                fontFamily: 'FSAriston',
                                color: HexColor('000000'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0, top: 30),
                          child: Text(
                            '10.',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'FSAriston',
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 35, top: 10),
                          child: Container(
                            child: Row(
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/user.png'),
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: HexColor('FFFFFF'),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 20,
                                  width: 80,
                                  child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Cấp 1',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'LinotteBold'),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          top: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120, top: 20),
                          child: Text(
                            'TuongVie2812',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'LinotteBold',
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 240, top: 20),
                          child: Text(
                            ' (Bạn)',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'LinotteBold',
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120, top: 48),
                          child: Text(
                            '555 điểm',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'LinotteBold',
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bg-menu.png'),
                              fit: BoxFit.fill)),
                      child: SingleChildScrollView(
                          child: Column(
                        children: [

                          //top1
                          Padding(
                           padding: EdgeInsets.only(left: 70, top: 65),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0, top: 30),
                                      child: Text(
                                        '1.',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontFamily: 'FSAriston',
                                            color: Color.fromARGB(255, 252, 3, 3)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 35, top:20),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'assets/user.png'),
                                                  height: 60,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: HexColor('FFFFFF'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              width: 70,
                                              child: Padding(
                                                  padding: EdgeInsets.only(top: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Cấp 1',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'LinotteBold'),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      top: 60,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 120, top: 20),
                                      child: Text(
                                        'TuongVie2812',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black),
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 130, top: 48),
                                      child: Text(
                                        '555 điểm',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        
                          //top2
                          Padding(
                           padding: EdgeInsets.only(left: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0, top: 25),
                                      child: Text(
                                        '2.',
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontFamily: 'FSAriston',
                                            color: Color.fromARGB(255, 252, 3, 3)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, top:10),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'assets/user.png'),
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: HexColor('FFFFFF'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              width: 70,
                                              child: Padding(
                                                  padding: EdgeInsets.only(top: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Cấp 1',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'LinotteBold'),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      top: 46,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 120, top: 10),
                                      child: Text(
                                        'TuongVie2812',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black),
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 130, top: 38),
                                      child: Text(
                                        '555 điểm',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        
                          //top3
                          Padding(
                           padding: EdgeInsets.only(left: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0, top: 25),
                                      child: Text(
                                        '3.',
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontFamily: 'FSAriston',
                                            color: Color.fromARGB(255, 252, 3, 3)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, top:10),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'assets/user.png'),
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: HexColor('FFFFFF'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              width: 70,
                                              child: Padding(
                                                  padding: EdgeInsets.only(top: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Cấp 1',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'LinotteBold'),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      top: 46,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 120, top: 10),
                                      child: Text(
                                        'TuongVie2812',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black),
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 130, top: 38),
                                      child: Text(
                                        '555 điểm',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        
                          //top4
                          Padding(
                           padding: EdgeInsets.only(left: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0, top: 25),
                                      child: Text(
                                        '4.',
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'FSAriston',
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, top:10),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'assets/user.png'),
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: HexColor('FFFFFF'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              width: 70,
                                              child: Padding(
                                                  padding: EdgeInsets.only(top: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Cấp 1',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'LinotteBold'),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      top: 46,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 120, top: 10),
                                      child: Text(
                                        'TuongVie2812',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black),
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 130, top: 38),
                                      child: Text(
                                        '555 điểm',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        
                          //top5
                          Padding(
                           padding: EdgeInsets.only(left: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0, top: 25),
                                      child: Text(
                                        '5.',
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'FSAriston',
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, top:10),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'assets/user.png'),
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: HexColor('FFFFFF'),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              width: 70,
                                              child: Padding(
                                                  padding: EdgeInsets.only(top: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Cấp 1',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'LinotteBold'),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      top: 46,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 120, top: 10),
                                      child: Text(
                                        'TuongVie2812',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'LinotteBold',
                                            color: Colors.black),
                                      ),
                                    ),
                                    
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 130, top: 38),
                                      child: Text(
                                        '555 điểm',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'LinotteBold',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        
                        ],
                      )),
                    )
                  ],
                ),
              ]),
            ),
          ],
        ));
  }
}
