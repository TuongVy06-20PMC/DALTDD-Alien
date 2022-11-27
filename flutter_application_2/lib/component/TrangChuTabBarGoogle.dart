import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TimKiem.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TrangChuTabBarGoogle extends StatefulWidget {
  const TrangChuTabBarGoogle({super.key});

  @override
  State<TrangChuTabBarGoogle> createState() => _TrangChuTabBarGoogleState();
}

class _TrangChuTabBarGoogleState extends State<TrangChuTabBarGoogle> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w600, fontFamily: 'FSAriston');
  static const List<Widget> _widgetOptions = <Widget>[
    HoSo(),
    TrangChu(),
    TimKiem()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: EdgeInsets.all(16),
            tabs:const [
              GButton(
                icon: Icons.person,
                text: 'Hồ sơ',
                textStyle: TextStyle(
                    fontFamily: 'LinotteBold', fontSize: 17, color: Colors.white),
              ),
              GButton(
                icon: Icons.home,
                text: 'Trang chủ',
                textStyle: TextStyle(
                    fontFamily: 'LinotteBold', fontSize: 17, color: Colors.white),
              ),
              GButton(
                icon: Icons.search,
                text: 'Tìm kiếm',
                textStyle: TextStyle(
                    fontFamily: 'LinotteBold', fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}
