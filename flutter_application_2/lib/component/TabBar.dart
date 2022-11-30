import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/TimTran.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/ThongKe.dart';
import 'package:flutter_application_2/Screen/TimKiem.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/Screen/XepHang.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'menu.dart';

class TabBarOld extends StatefulWidget {
  const TabBarOld({super.key});

  @override
  State<TabBarOld> createState() => _TabBarOldState();
}

class _TabBarOldState extends State<TabBarOld> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            color: HexColor('f9bb40'),
            height: 85,
            child: TabBar(
              labelColor: HexColor('FFEE52'),
              unselectedLabelColor: HexColor('FFEE52'),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(3.0),
              indicatorColor: HexColor('0C205B'),
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [HexColor('FFEE52'), Colors.green]),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.redAccent),
              tabs: const <Widget>[
                Tab(
                  icon: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 50,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu_book,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: HoSo(),
              ),
              TrangChu(),
              Center(
                child: Text('Luật chơi'),
              ),
            ],
          ),
        ));
  }
}
