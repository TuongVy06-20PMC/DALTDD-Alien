import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/TimTran.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/ThongKe.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XepHang.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class TimKiem extends StatefulWidget {
  const TimKiem({super.key});

  @override
  State<TimKiem> createState() => _TimKiemState();
}

class _TimKiemState extends State<TimKiem> {
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
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TrangChuTabBarGoogle()));
                                    },
                                    icon: Image.asset('assets/delete.png'))
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0, left: 50),
                            child: Text(
                              'Tìm kiếm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60.0,
                                  fontFamily: 'FSAriston'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 8.0, right: 8.0, bottom: 8.0),
                        child: Container(
                          height: 520.0,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.6),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SearchBarAnimation(
                                  textEditingController:
                                      TextEditingController(),
                                  isOriginalAnimation: true,
                                  enableKeyboardFocus: true,
                                  onExpansionComplete: () {
                                    debugPrint(
                                        'do something just after searchbox is opened.');
                                  },
                                  onCollapseComplete: () {
                                    debugPrint(
                                        'do something just after searchbox is closed.');
                                  },
                                  onPressButton: (isSearchBarOpens) {
                                    debugPrint(
                                        'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                                  },
                                  trailingWidget: const Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  secondaryButtonWidget: const Icon(
                                    Icons.close,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  buttonWidget: const Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
