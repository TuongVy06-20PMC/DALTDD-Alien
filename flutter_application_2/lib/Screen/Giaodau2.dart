import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/VaoTran.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class TimThay extends StatefulWidget {
  const TimThay({super.key});

  @override
  State<TimThay> createState() => _TimThayState();
}

class _TimThayState extends State<TimThay> {
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
                image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 50, top: 60),
                child: Image.asset(
                  'assets/logo.png',
                  height: 80,
                  width: 150,
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
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg-menu.png'),
                        fit: BoxFit.fill),
                  ),
                  height: 612,
                  width: 380,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 40, top: 20),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 50, top: 90),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Row(
                                            children: const [
                                              Image(
                                                image: AssetImage(
                                                    'assets/user.png'),
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
                                      padding:
                                          EdgeInsets.only(left: 50, top: 90),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: HexColor('FFEE52'),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
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
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, top: 170),
                                    child: Text(
                                      'TuongVie2812',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'LinotteBold',
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/versus.png'),
                              height: 80,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 0, right: 70),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50, top: 20),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          children: const [
                                            Image(
                                              image:
                                                  AssetImage('assets/user.png'),
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
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('FFEE52'),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30, top: 100),
                                  child: Text(
                                    'TuongVie2812',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'LinotteBold',
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/btn.png',
                                fit: BoxFit.fill,
                                height: 60,
                                width: 210,
                              )
                            ],
                          ),
                          Positioned(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Vào trận',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black),
                              ),
                            ),
                            left: 48,
                            top: 1,
                          ),
                        ]),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VaoTran()),
                        );
                      },
                    ),
                        ],
                      )
                    ],
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
