import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/ChiTietTimKiem.dart';
import 'package:flutter_application_2/Screen/TimKiemEmail.dart';
import 'package:flutter_application_2/Screen/TimTran.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/ThongKe.dart';
import 'package:flutter_application_2/Screen/User.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XepHang.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:searchbar_animation/const/colours.dart';
import '../component/menu.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class TimKiem extends StatefulWidget {
  @override
  State<TimKiem> createState() {
    return TimKiemState();
  }
}

class TimKiemState extends State<TimKiem> {
  List searchResult = [];

  List<Nguoidung> Test = [];

  void searchFromFirebase(String query) async {
    final result = await FirebaseFirestore.instance
        .collection('users')
        .where(
          'tendangnhap',
          isEqualTo: query,
        )
        .get();

    setState(() {
      searchResult = result.docs.map((e) => e.data()).toList();
      Test = searchResult.map((e) => Nguoidung.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 3, 3, 3),
                        Colors.black,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 70, top: 20),
                            child: Image.asset(
                              'assets/logo.png',
                              width: 130,
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
                      Column(
                        children: [
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10, left: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(),
                                    hintText: "Tìm kiếm tên người chơi",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Linotte',
                                        fontSize: 18),
                                  ),
                                  onChanged: (query) {
                                    searchFromFirebase(query);
                                  },
                                ),
                                // SearchBarAnimation(
                                //   buttonColour:
                                //       Color.fromARGB(255, 255, 244, 143),
                                //   hintText: 'Tìm kiếm tên game',
                                //   hintTextColour: AppColours.black,
                                //   textEditingController:
                                //       TextEditingController(),
                                //   isOriginalAnimation: true,
                                //   enableKeyboardFocus: true,
                                //   onExpansionComplete: (String query) {
                                //     searchFromFirebase(query);
                                //   },
                                //   onChanged: (String Query) {
                                //     // searchFromFirebase(Query);
                                //   },
                                //   onCollapseComplete: (String query) {
                                //     searchFromFirebase(query);
                                //   },
                                //   onPressButton: (isSearchBarOpens) {
                                //     debugPrint(
                                //         'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                                //   },
                                //   trailingWidget: Icon(
                                //     Icons.search,
                                //     size: 20,
                                //     color: HexColor('0C205B'),
                                //   ),
                                //   secondaryButtonWidget: Icon(
                                //     Icons.close,
                                //     size: 20,
                                //     color: HexColor('0C205B'),
                                //   ),
                                //   buttonWidget: Icon(
                                //     Icons.search,
                                //     size: 20,
                                //     color: HexColor('0C205B'),
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                          // StreamBuilder(
                          //     stream: FirebaseFirestore.instance
                          //         .collection('users')
                          //         .snapshots(),
                          //     builder: (context, snapshot) {
                          //       return (snapshot.connectionState ==
                          //               ConnectionState.waiting)
                          //           ? Center(
                          //               child: CircularProgressIndicator(),
                          //             )
                          //           : ListView.builder(
                          //               itemCount:
                          //                   snapshot.data!.docs.length,
                          //               itemBuilder: (context, index) {
                          //                 var data = snapshot
                          //                         .data!.docs[index]
                          //                         .data()
                          //                     as Map<String, dynamic>;

                          //                 if (name.isEmpty) {
                          //                   return ListTile(
                          //                     title:
                          //                         Text(data['tendangnhap']),
                          //                   );
                          //                 }
                          //                 if (data['tendangnhap']
                          //                     .toString()
                          //                     .toLowerCase()
                          //                     .startsWith(
                          //                         name.toLowerCase())) {
                          //                   return ListTile(
                          //                     title:
                          //                         Text(data['tendangnhap']),
                          //                   );
                          //                 }
                          //                 return Container();
                          //               },
                          //             );
                          //     })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              child: Stack(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/btn.png',
                                      fit: BoxFit.fill,
                                      height: 50,
                                      width: 180,
                                    )
                                  ],
                                ),
                                Positioned(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Text(
                                      'Tìm kiếm tên',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'FSAriston',
                                          color: Colors.black),
                                    ),
                                  ),
                                  left: 35,
                                  top: 10,
                                ),
                              ]),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimKiem()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              child: Stack(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/btn.png',
                                      fit: BoxFit.fill,
                                      height: 50,
                                      width: 180,
                                    )
                                  ],
                                ),
                                Positioned(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Text(
                                      'Tìm kiếm email',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'FSAriston',
                                          color: Colors.black),
                                    ),
                                  ),
                                  left: 30,
                                  top: 10,
                                ),
                              ]),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimKiemEmail()),
                              );
                            },
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 8.0, right: 8.0, bottom: 8.0),
                          child: SingleChildScrollView(
                            child: Container(
                                height: 450.0,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.6),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: ListView.builder(
                                    itemCount: searchResult.length,
                                    itemBuilder: (context, index) => Card(
                                          color: HexColor('FFFF'),
                                          child: ListTile(
                                            leading: Icon(
                                                Icons.account_box_outlined),
                                            trailing: Icon(Icons.info_outline),
                                            title: Text(
                                              searchResult[index]
                                                  ['tendangnhap'],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'LinotteBold',
                                                fontSize: 25,
                                              ),
                                            ),
                                            subtitle: Text(
                                              searchResult[index]['email'],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.yellow,
                                                fontFamily: 'LinotteBold',
                                                fontSize: 18,
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChiTietTimKiem(
                                                              nguoidung: Test[
                                                                  index])));
                                            },
                                          ),
                                        ))),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
