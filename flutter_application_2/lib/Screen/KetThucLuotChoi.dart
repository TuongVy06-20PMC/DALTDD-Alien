import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';
import 'Level.dart';

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
                        Image.asset(
                          'assets/icon3.png',
                          fit: BoxFit.fill,
                          height: 45,
                          width: 45,
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
                                            //height: 60,
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
                                          left: 62,
                                          bottom: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Làm tốt lắm!!',
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
                        margin: EdgeInsets.only(top: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
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
                                          padding: EdgeInsets.all(2),
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
                                              onPressed: (() {}),
                                              icon: Image.asset(
                                                'assets/cross.png',
                                                height: 30,
                                                width: 30,
                                              )),
                                          left: 210,
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
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const BatDauChoi()),
                                                  );
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
                            Padding(
                              padding: EdgeInsets.only(right: 10),
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
                                          'Kế tiếp',
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
                                            const LevelScreen()),
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
