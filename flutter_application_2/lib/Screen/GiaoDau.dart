import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class GiaoDau extends StatefulWidget {
  const GiaoDau({super.key});

  @override
  State<GiaoDau> createState() => _GiaoDauState();
}

class _GiaoDauState extends State<GiaoDau> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: HexColor('0C205B')),
          child: ListView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrangChuTabBarGoogle()));
                            },
                            icon: Image.asset('assets/left.png'),
                            iconSize: 45,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Column(
                        children: const [
                          Image(
                            image: AssetImage('assets/logo.png'),
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () =>
                                _sKey.currentState?.openEndDrawer(),
                            icon: Image.asset('assets/cross-1.png'),
                            iconSize: 40,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.3,
                        //margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/bg-menu.png'))),
                        child: Stack(
                          children: [
                            Positioned(
                              child: InkWell(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: const [
                                                    Image(
                                                      image: AssetImage(
                                                          'assets/user.png'),
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
                                            padding: EdgeInsets.only(left: 44),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: HexColor('FFEE52'),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  height: 20,
                                                  width: 75,
                                                  child: Padding(
                                                      padding: EdgeInsets.zero,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Cấp 1',
                                                            style: TextStyle(
                                                                fontSize: 13,
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
                                          left: 14,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child: Text(
                                        'UserName',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              top: 150,
                              left: 20,
                            ),
                            Positioned(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'vs',
                                  style: TextStyle(
                                      fontFamily: 'LinotteBold', fontSize: 15),
                                )
                              ],
                            ),
                            top: 180,
                            ),
                          ],
                        ))
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}
