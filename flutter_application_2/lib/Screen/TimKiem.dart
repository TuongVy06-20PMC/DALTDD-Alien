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
import 'package:searchbar_animation/const/colours.dart';
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 50, top: 20),
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
                                  
                                  buttonColour: Color.fromARGB(255, 255, 244, 143),
                                  hintText: 'Tìm kiếm..',
                                  hintTextColour: AppColours.black,
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
                                  trailingWidget:  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: HexColor('0C205B'),
                                  ),
                                  secondaryButtonWidget:  Icon(
                                    Icons.close,
                                    size: 20,
                                    color: HexColor('0C205B'),
                                  ),
                                  buttonWidget:  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: HexColor('0C205B'),
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
