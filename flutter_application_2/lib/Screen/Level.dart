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
                                  builder: (context) => const TrangChuTabBarGoogle()),
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
                          'CẤP ĐỘ',
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
                          'CẤP ĐỘ',
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
                    top: 45,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        width: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 1',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Hải Vương',
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
                                  'Có thể bạn chưa biết?',
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
                                        '- Sao Hải Vương là hành tinh thứ tám và xa nhất tính từ Mặt Trời trong Hệ Mặt Trời.'
                                        ' Nó là hành tinh lớn thứ tư về đường kính và lớn thứ ba về khối lượng',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao Hải Vương có khối lượng gấp 17 lần khối lượng của Trái Đất và hơi lớn hơn khối lượng của sao Thiên Vương(xấp xỉ bằng 15 lần của Trái Đất).',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao Hải Vương quay trên quỹ đạo quanh Mặt Trời ở khoảng cách trung bình 30,1 AU, bằng khoảng 30 lần khoảng cách Trái Đất - Mặt Trời.',
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
                                                          'Chinh phục',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        width: 60,
                                      ),
                                      // SizedBox(height: 5,),
                                      Text(
                                        'Cấp 2',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thiên Vương',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
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
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 3',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thổ',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        'Cấp 4',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Mộc',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        'Cấp 5',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Hỏa',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
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
                                        'Cấp 6',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Trái Đất',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        'Cấp 7',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Mặt Trăng',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        'Cấp 8',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
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
                                        'Cấp 9',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thủy',
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
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

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
                                        'Cấp 10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Mặt Trời',
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
