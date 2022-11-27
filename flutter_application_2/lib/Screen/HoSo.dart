import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/ChinhSuaHoSo.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../Screen/TrangChu.dart';
import '../component/menu.dart';

class HoSo extends StatefulWidget {
  const HoSo({super.key});

  @override
  State<HoSo> createState() => _HoSoState();
}

class _HoSoState extends State<HoSo> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _sKey,
        endDrawer: Menu(),
        body: Center(
            child: ListView(children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TrangChuTabBarGoogle()),
                          );
                        }),
                        icon: Image.asset(
                          'assets/left-arrow.png',
                          height: 50,
                          width: 50,
                          color: HexColor('#FFDE00'),
                        )),
                    IconButton(
                        onPressed: () => _sKey.currentState?.openEndDrawer(),
                        icon: Image.asset(
                          'assets/menu.png',
                          height: 40,
                          width: 40,
                          color: HexColor('FFDE00'),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/user.png'),
                    radius: 60.0,
                  ),
                  Positioned(
                    top: 50,
                    bottom: 0.0,
                    right: 0.0,
                    left: 93,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChinhSuaHoSo()));
                      },
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 50),
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
                                          fontSize: 13,
                                          fontFamily: 'LinotteBold'),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    top: 50,
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TuongVie2812',
                  style: TextStyle(
                      fontSize: 23,
                      fontFamily: "LinotteBold",
                      color: Colors.white),
                ),
                // SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.15,
                        height: MediaQuery.of(context).size.height / 2.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/bg-menu.png'),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15, top: 40),
                                child: Stack(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/btn.png',
                                        fit: BoxFit.fill,
                                        height: 55,
                                        width: 200,
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Họ tên',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'LinotteBold',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    left: 96,
                                    top: 7,
                                  ),
                                ]),
                              ),
                              onTap: () {},
                            ),
                            //giao dau

                            //xep hang
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Stack(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/btn.png',
                                        fit: BoxFit.fill,
                                        height: 55,
                                        width: 200,
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Ngày sinh',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'LinotteBold',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    left: 96,
                                    top: 7,
                                  ),
                                ]),
                              ),
                              onTap: () {},
                            ),

                            //thống kê
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Stack(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/btn.png',
                                        fit: BoxFit.fill,
                                        height: 55,
                                        width: 200,
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Email',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'LinotteBold',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    left: 96,
                                    top: 7,
                                  ),
                                ]),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/btn.png',
                                fit: BoxFit.fill,
                                height: 60,
                                width: 230,
                              )
                            ],
                          ),
                          Positioned(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Chỉnh sửa',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black),
                              ),
                            ),
                            left: 117,
                            top: 1,
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChinhSuaHoSo()),
                        );
                      },
                    ),
                  ],
                )
              ])),
        ])));
  }
}
