import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/ChinhSuaHoSo.dart';
import 'package:flutter_application_2/Screen/User.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../Screen/TrangChu.dart';
import '../component/menu.dart';
import 'User.dart';

class HoSo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HoSoState();
  }
}

class HoSoState extends State<HoSo> {
  final _auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance;
  @override
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
    sendDataToFirebase();
  }

  void sendDataToFirebase() async {
    FirebaseFirestore.instance
        .collection('users')
        .add({'ngaysinh': FieldValue.serverTimestamp()});
  }

  var _numberToMonthMap = {
    1: 'Jan',
    2: 'Feb',
    3: 'Mar',
    4: 'Apr',
    5: 'May',
    6: 'Jun',
    7: 'Jul',
    8: 'Aug',
    9: 'Sep',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec',
  };

  @override
  Widget build(BuildContext context) {
    final loginUser = _auth.currentUser;
    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
          child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("users")
                .where("email", isEqualTo: loginUser!.email)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      // Map<String, dynamic> data1 =
                      //     i.data1() as Map<String, dynamic>;

                      var data = snapshot.data!.docs[i];
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        onPressed: () =>
                                            _sKey.currentState?.openEndDrawer(),
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
                                    backgroundImage:
                                        AssetImage('assets/user.png'),
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
                                                builder: (context) =>
                                                    ChinhSuaHoSo()));
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
                                      padding:
                                          EdgeInsets.only(left: 20, top: 50),
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
                                                      'Cấp ' +
                                                          data['cap']
                                                              .toString(),
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
                                    top: 50,
                                  ),
                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  data['tendangnhap'],
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontFamily: "LinotteBold",
                                      color: Colors.white),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.15,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                2.2,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/bg-menu.png'),
                                                fit: BoxFit.fill)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 15, top: 40),
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
                                                        height: 55,
                                                        width: 200,
                                                      )
                                                    ],
                                                  ),
                                                  Positioned(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        data['hoten'],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'LinotteBold',
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
                                            //     margin:
                                            //         EdgeInsets.only(bottom: 15),
                                            //     child: Stack(children: [
                                            //       Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .center,
                                            //         crossAxisAlignment:
                                            //             CrossAxisAlignment
                                            //                 .center,
                                            //         children: [
                                            //           Image.asset(
                                            //             'assets/btn.png',
                                            //             fit: BoxFit.fill,
                                            //             height: 55,
                                            //             width: 200,
                                            //           )
                                            //         ],
                                            //       ),
                                            //       // Positioned(
                                            //       //   child: Padding(
                                            //       //     padding:
                                            //       //         EdgeInsets.all(10),
                                            //       //     child: Text(
                                            //       //       data['ngaysinh']
                                            //       //           .toString(),
                                            //       //       textAlign:
                                            //       //           TextAlign.center,
                                            //       //       style: TextStyle(
                                            //       //         fontSize: 9,
//       //         fontFamily:
                                            //       //             'LinotteBold',
                                            //       //         color: Colors.black,
                                            //       //       ),
                                            //       //     ),
                                            //       //   ),
                                            //       //   left: 96,
                                            //       //   top: 7,
                                            //       // ),
                                            //     ]),
                                            //   ),
                                            //   onTap: () {},
                                            // ),

                                            //thống kê
                                            InkWell(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 15),
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
                                                        height: 55,
                                                        width: 200,
                                                      )
                                                    ],
                                                  ),
                                                  Positioned(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        data['email'],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'LinotteBold',
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                              builder: (context) =>
                                                  const ChinhSuaHoSo()),
                                        );
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ]);
                    });
              } else if (snapshot.hasData) {
                return Center(
                  child: Text('Có lỗi xảy ra'),
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ]),
    );
  }
}
