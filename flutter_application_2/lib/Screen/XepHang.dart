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
        decoration:  BoxDecoration(
          color: HexColor('0C205B')
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TrangChuTabBarGoogle()));
                        },
                        icon: Image.asset('assets/delete.png'))
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/logo.png'),
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 30, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () => _sKey.currentState?.openEndDrawer(),
                        icon: Image.asset('assets/menu.png'))
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bảng xếp hạng',
                style: TextStyle(
                    fontSize: 45, fontFamily: 'FSAriston', color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Top 5',
                style: TextStyle(
                    fontSize: 40, fontFamily: 'FSAriston', color: Colors.white),
              ),
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
                    padding: EdgeInsets.only(left: 30, top: 0),
                    child: Container(
                      child: Row(
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/user.png'),
                                height: 80,
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
                      padding: EdgeInsets.only(left: 30, top: 0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('FFEE52'),
                                borderRadius: BorderRadius.circular(10)),
                            height: 20,
                            width: 80,
                            child: Padding(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cấp 1',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'FSAriston'),
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
                    padding: EdgeInsets.only(left: 120, top: 30),
                    child: Text(
                      'TuongVie2812',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'FSAriston',
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120, top: 58),
                    child: Text(
                      '555 điểm',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'FSAriston',
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200, top: 58),
                    child: Text(
                      '(Bạn)',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'FSAriston',
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                color: Color.fromRGBO(217, 217, 217, 170),
                height: 480,
                width: 350,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                '1.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/user.png'),
                                          height: 65,
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
                                padding: EdgeInsets.only(left: 50, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: HexColor('FFEE52'),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 15,
                                      width: 65,
                                      child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cấp 10',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'FSAriston'),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              top: 53,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 40),
                              child: Text(
                                'TuongVie2812',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 70),
                              child: Text(
                                '1000 điểm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FSAriston',
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                '2.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/user.png'),
                                          height: 65,
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
                                padding: EdgeInsets.only(left: 50, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: HexColor('FFEE52'),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 15,
                                      width: 65,
                                      child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cấp 9',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'FSAriston'),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              top: 53,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 40),
                              child: Text(
                                'TuongVie2812',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 70),
                              child: Text(
                                '999 điểm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FSAriston',
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                '3.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/user.png'),
                                          height: 65,
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
                                padding: EdgeInsets.only(left: 50, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: HexColor('FFEE52'),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 15,
                                      width: 65,
                                      child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cấp 8',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'FSAriston'),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              top: 53,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 40),
                              child: Text(
                                'TuongVie2812',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 70),
                              child: Text(
                                '888 điểm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FSAriston',
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                '4.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/user.png'),
                                          height: 65,
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
                                padding: EdgeInsets.only(left: 50, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: HexColor('FFEE52'),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 15,
                                      width: 65,
                                      child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cấp 7',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'FSAriston'),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              top: 53,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 40),
                              child: Text(
                                'TuongVie2812',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 70),
                              child: Text(
                                '777 điểm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FSAriston',
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                '5.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Image(
                                          image: AssetImage('assets/user.png'),
                                          height: 65,
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
                                padding: EdgeInsets.only(left: 50, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: HexColor('FFEE52'),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 15,
                                      width: 65,
                                      child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cấp 6',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'FSAriston'),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              top: 53,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 40),
                              child: Text(
                                'TuongVie2812',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 130, top: 70),
                              child: Text(
                                '666 điểm',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FSAriston',
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                  ],
                )),
              )
            ],
          ),
        ]),
      ),
        ],
      )
      
    );
  }
}
