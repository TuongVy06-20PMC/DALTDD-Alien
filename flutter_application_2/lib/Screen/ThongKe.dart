import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class ThongKe extends StatefulWidget {
  const ThongKe({super.key});

  @override
  State<ThongKe> createState() => _ThongKeState();
}

class _ThongKeState extends State<ThongKe> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.png'), fit: BoxFit.cover),
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
                      height: 100,
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
              Padding(
                padding: EdgeInsets.only(left: 0, top: 10),
                child: Text(
                  'Thống kê',
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'FSAriston',
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0, top: 0),
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
                      padding: EdgeInsets.only(left: 0, top: 0),
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
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120, top: 0),
                child: Text(
                  'TuongVie2812',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'FSAriston',
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                color: Color.fromRGBO(217, 217, 217, 170),
                height: 480,
                width: 350,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  '0/10',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'Số hành tinh',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'hoàn thành',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/kung-fu.png'),
                                    height: 130,
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'Lượt thắng',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'giao đấu',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/kung-fu.png'),
                                    height: 130,
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'Số xu',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'kiếm được',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/kung-fu.png'),
                                    height: 130,
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'Có gì đâu',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 0),
                                child: Text(
                                  'mà lướt',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'FSAriston',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('assets/kung-fu.png'),
                                    height: 130,
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ],
                )),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
