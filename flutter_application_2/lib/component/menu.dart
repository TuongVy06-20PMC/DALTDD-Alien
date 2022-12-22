import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/Loading.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Screen/DangNhap.dart';
import '../Screen/CaiDat.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 130,
            child: DrawerHeader(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(12, 32, 91, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/monster-1.png',
                      height: 50,
                      alignment: Alignment.topLeft,
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontFamily: 'LinotteBold',
                          fontSize: 23,
                          color: Colors.white),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: HexColor('f3a400'),
                size: 35,
              ),
              title: const Text(
                'Cài đặt',
                style: TextStyle(fontFamily: 'LinotteBold', fontSize: 25),
              ),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CaiDat()));
              },
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: HexColor('f3a400'),
                size: 35,
              ),
              title: const Text(
                'Đăng xuất',
                style: TextStyle(fontFamily: 'LinotteBold', fontSize: 25),
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DangNhap()),
                );
              }),
        ],
      ),
    );
  }
}
