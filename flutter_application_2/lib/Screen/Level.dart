import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50, top: 10),
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
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'C???P ?????',
                          style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'FSAriston',
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 5
                              ..color = HexColor('FFEE52'),
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          'C???P ?????',
                          style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'FSAriston',
                            color: HexColor('000000'),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saohaivuong.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 1',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao H???i V????ng',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'C?? th??? b???n ch??a bi???t?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('FF1E1E')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '- Sao H???i V????ng l?? h??nh tinh th??? t??m v?? xa nh???t t??nh t??? M???t Tr???i trong H??? M???t Tr???i.'
                                        ' N?? l?? h??nh tinh l???n th??? t?? v??? ???????ng k??nh v?? l???n th??? ba v??? kh???i l?????ng',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao H???i V????ng c?? kh???i l?????ng g???p 17 l???n kh???i l?????ng c???a Tr??i ?????t v?? h??i l???n h??n kh???i l?????ng c???a sao Thi??n V????ng(x???p x??? b???ng 15 l???n c???a Tr??i ?????t).',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao H???i V????ng quay tr??n qu??? ?????o quanh M???t Tr???i ??? kho???ng c??ch trung b??nh 30,1 AU, b???ng kho???ng 30 l???n kho???ng c??ch Tr??i ?????t - M???t Tr???i.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
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
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh ph???c',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const AnimatedContainerApp()),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saothienvuong.png',
                                        width: 68,
                                      ),
                                      // SizedBox(height: 5,),
                                      Text(
                                        'C???p 2',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thi??n V????ng',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saotho.png',
                                        width: 68,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 3',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Th???',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saomoc.png',
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 4',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao M???c',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saohoa.png',
                                        width: 65,
                                      ),
                                      // SizedBox(height: 5,),
                                      Text(
                                        'C???p 5',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao H???a',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/traidat.png',
                                        width: 65,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 6',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Tr??i ?????t',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/mattrang.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 7',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'M???t Tr??ng',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saokim.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 8',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Kim',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saothuy.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 9',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Th???y',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.height / 7,

                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/mattroi.png',
                                        width: 63,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'C???p 10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'M???t Tr???i',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangChuTabBarGoogle()),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
