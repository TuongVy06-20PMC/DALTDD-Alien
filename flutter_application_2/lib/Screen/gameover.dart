import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';
import 'Level.dart';
import 'KetThucLuotChoi.dart';

class gameover extends StatefulWidget {
  const gameover({super.key});

  @override
  State<gameover> createState() => _gameoverState();
}

class _gameoverState extends State<gameover> {
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
            margin: EdgeInsets.only(top: 40, left: 15, right: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 50, top: 20),
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
                margin: EdgeInsets.only(
                  top: 60,
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            // margin: EdgeInsets.only(top: 20),
                            padding:
                                EdgeInsets.only(left: 60, top: 15, right: 50),
                            //padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/bg-menu.png'),
                                    fit: BoxFit.fill)),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 120),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'HẾT GIỜ RỒI',
                                          style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 30,
                                            color: HexColor('FF0000'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Bạn đã thua cuộc',
                                    style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 30,
                                      color: HexColor('000000'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10, top: 50),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('FFF9CA'),
                                    minimumSize: Size(70, 70),
                                    side: BorderSide(
                                        width: 3, color: HexColor('614400')),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            'Chơi lại',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'LinotteBold',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: HexColor('fde787'),
                                    title: Stack(
                                      children: [
                                        Text(
                                          '| Lưu ý',
                                          style: TextStyle(
                                              color: HexColor('614400'),
                                              fontSize: 38,
                                              fontFamily: 'FSAriston'),
                                        ),
                                        Positioned(
                                          child: IconButton(
                                              onPressed: (() {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const gameover()),
                                                );
                                              }),
                                              icon: Image.asset(
                                                'assets/close-option.png',
                                                height: 30,
                                                width: 30,
                                                color: HexColor('614400'),
                                              )),
                                          left: 180,
                                          bottom: 1,
                                        ),
                                      ],
                                    ),
                                    content: const Text(
                                      'Nếu bạn chọn Chơi lại, đồng nghĩa với việc điểm vừa rồi sẽ bị hủy',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 22),
                                    ),
                                    
                                    actions: <Widget>[
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn-2.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 120,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Đồng ý',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 12,
                                                      left: 28,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                            ])),
                      ],
                    ),
                    
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
