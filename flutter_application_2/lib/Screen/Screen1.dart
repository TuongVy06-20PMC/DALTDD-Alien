import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/DangKy.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'DangNhap.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: HexColor('0C205B'),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    height: 140,
                    width: 250,
                  ),
                ),
                InkWell(
                        child: Container(
                          margin: EdgeInsets.only( top: 15),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 65,
                                  width: 280,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Đăng Ký',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'FSAriston',
                                    color: HexColor('614400'),
                                  ),
                                ),
                              ),
                              left: 130,
                              top: 3,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DangKy()),
                          );
                        },
                      ),
                InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, top: 15),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 65,
                                  width: 280,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Đăng Nhập',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'FSAriston',
                                    color: HexColor('614400'),
                                  ),
                                ),
                              ),
                              left: 120,
                              top: 3,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DangNhap()),
                          );
                        },
                      ),
              ],
            ),
          )),
    );
  }
}
