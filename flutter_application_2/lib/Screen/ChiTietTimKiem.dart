import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/TimKiem.dart';
import 'package:flutter_application_2/Screen/User.dart';
import 'package:hexcolor/hexcolor.dart';

class ChiTietTimKiem extends StatefulWidget {
  Nguoidung nguoidung;
  ChiTietTimKiem({Key? key, required this.nguoidung}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ChiTietTimKiemState();
  }
}

class ChiTietTimKiemState extends State<ChiTietTimKiem> {
  TextEditingController txtTen = TextEditingController();
  TextEditingController txtHoten = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  @override
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  void initState() {
    super.initState();
    txtTen.text = this.widget.nguoidung.tendangnhap;
    txtHoten.text = this.widget.nguoidung.hoten;
    txtEmail.text = this.widget.nguoidung.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _sKey,
        body: Center(
            child: ListView(children: [
          Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  //color: HexColor('0C205B')
                  image: DecorationImage(
                      image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (() {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => TimKiem()),
                          );
                        }),
                        icon: Image.asset(
                          'assets/left-arrow.png',
                          height: 50,
                          width: 50,
                          color: HexColor('#FFDE00'),
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
                  txtTen.text,
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
                                        height: 60,
                                        width: 250,
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 13),
                                      child: Text(
                                        txtHoten.text,
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
                            // InkWell(
                            //   child: Container(
                            //     margin: EdgeInsets.only(bottom: 15),
                            //     child: Stack(children: [
                            //       Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.center,
                            //         children: [
                            //           Image.asset(
                            //             'assets/btn.png',
                            //             fit: BoxFit.fill,
                            //             height: 55,
                            //             width: 200,
                            //           )
                            //         ],
                            //       ),
                            //       Positioned(
                            //         child: Padding(
                            //           padding: EdgeInsets.all(10),
                            //           child: Text(
                            //             'Ngày sinh',
                            //             textAlign: TextAlign.center,
                            //             style: TextStyle(
                            //               fontSize: 20,
                            //               fontFamily: 'LinotteBold',
                            //               color: Colors.black,
                            //             ),
                            //           ),
                            //         ),
                            //         left: 96,
                            //         top: 7,
                            //       ),
                            //     ]),
                            //   ),
                            //   onTap: () {},
                            // ),

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
                                        height: 60,
                                        width: 250,
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 13),
                                      child: Text(
                                        txtEmail.text,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
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
                  ],
                )
              ])),
        ])));
  }
}
