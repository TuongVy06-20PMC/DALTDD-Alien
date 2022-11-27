import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/TimTran.dart';
import 'package:flutter_application_2/Screen/ThongKe.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:flutter_application_2/Screen/XepHang.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Screen/Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//123
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
                  margin: EdgeInsets.only(bottom: 80, top: 150),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
          Padding(
            padding: EdgeInsets.only(top: 350),
            child: TextButton(
              child: const Text(
                'Bắt đầu.......',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'FSAriston',
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Screen1()),
                );
              },
            ),
          ),
        ],
      ),
    )));
  }
}// thay doi