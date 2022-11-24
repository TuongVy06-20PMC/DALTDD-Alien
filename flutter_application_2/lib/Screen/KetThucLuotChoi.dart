import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';

class KetThucLuotChoi extends StatefulWidget {
  const KetThucLuotChoi({super.key});

  @override
  State<KetThucLuotChoi> createState() => _KetThucLuotChoiState();
}

class _KetThucLuotChoiState extends State<KetThucLuotChoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          decoration: BoxDecoration(color: HexColor('0C205B')),
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 15, right: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 80, top: 20),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 120,
                    ),
                  ),
                  IconButton(
                      onPressed: (() {}),
                      icon: Image.asset(
                        'assets/icon3.png',
                        height: 70,
                        width: 70,
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
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
                            width: MediaQuery.of(context).size.width / 1.05,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/bg-menu.png'),
                                    fit: BoxFit.fill)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Image.asset(
                                            'assets/btn.png',
                                            width: 230,
                                            height: 60,
                                          ),
                                        ),
                                       const Positioned(
                                          child: Text(
                                            'LEVEL 01',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'LinotteBold',
                                                fontSize: 25),
                                          ),
                                          left: 65,
                                          bottom: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Làm tốt lắm!!',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 40,
                                            color: HexColor('614400')),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:const [
                                    Padding(padding: EdgeInsets.only(bottom: 10, top: 20),
                                    child: Text('Tổng số điểm: 700', style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 20,
                                    ),),
                                    ),
                                     Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Số câu đúng: 7/10', style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 20,
                                    ),),
                                    ),
                                     Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Số câu sai: 3/10', style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 20,
                                    ),),
                                    ),
                                     Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Số điểm hiện có: 1700', style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 20,
                                    ),),
                                    ),
                                     Padding(padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Kinh nghiệm tích lũy: 200', style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 20,
                                    ),),
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
                              padding: EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('FFEE52'),
                                    minimumSize: Size(70, 60),
                                    side: const BorderSide(
                                        width: 2, color: Colors.black),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'Chơi lại',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontFamily: 'FSAriston',
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/arrow.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                        ],
                                      )),
                                  onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            backgroundColor: HexColor('FFFDA2'),
                                            title: Text(
                                              'Lưu ý',
                                              style: TextStyle(
                                                  color: HexColor('F90716'),
                                                  fontSize: 35,
                                                  fontFamily: 'FSAriston'),
                                            ),
                                            content: const Text(
                                              'Khi bạn chơi lại hệ thống sẽ không tính điểm hoặc thưởng',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'FSAriston',
                                                  fontSize: 22),
                                            ),
                                            actions: <Widget>[
                                              Stack(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(25),
                                                        child: TextButton(
                                                          style: TextButton.styleFrom(
                                                              backgroundColor:
                                                                  HexColor(
                                                                      '0C205B'),
                                                              shadowColor:
                                                                  Colors.white),
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context,
                                                                  'Thoát'),
                                                          child: Text(
                                                            'Thoát',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    'FFFDA2'),
                                                                fontSize: 23,
                                                                fontFamily:
                                                                    'FSAriston'),
                                                          ),
                                                        ),
                                                      ),
                                                      TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    HexColor(
                                                                        '0C205B'),
                                                                shadowColor:
                                                                    Colors
                                                                        .white),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const BatDauChoi()),
                                                          );
                                                        },
                                                        child: Text(
                                                          'Đồng ý',
                                                          style: TextStyle(
                                                              color: HexColor(
                                                                  'FFFDA2'),
                                                              fontSize: 23,
                                                              fontFamily:
                                                                  'FSAriston'),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Positioned(
                                                    child: Image.asset(
                                                        'assets/monster-1.png'),
                                                    height: 55,
                                                    width: 55,
                                                    left: 40,
                                                    bottom: 29,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ))),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: HexColor('FFEE52'),
                                      minimumSize: Size(70, 60),
                                      side: const BorderSide(
                                          width: 2, color: Colors.black),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Text(
                                                'Xem lại',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: 'FSAriston',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/eye-open.png',
                                              height: 25,
                                              width: 25,
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
                                    })),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFEE52'),
                                  minimumSize: Size(70, 60),
                                  side: const BorderSide(
                                      width: 2, color: Colors.black),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            'Kế tiếp',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'FSAriston',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/right-arrow.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      ],
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TrangChuTabBarGoogle()),
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
