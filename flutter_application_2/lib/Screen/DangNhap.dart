import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/Screen/DangKy.dart';
import 'package:flutter_application_2/Screen/Dialog/loading.dart';
import 'package:flutter_application_2/Screen/Dialog/msg.dart';
import 'package:flutter_application_2/Screen/QuenMatKhau.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'QuenMatKhau.dart';

class DangNhap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DangNhapState();
  }
}

class DangNhapState extends State<DangNhap> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                height: 90,
                width: 160,
              ),
              Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'ĐĂNG NHẬP',
                        style: TextStyle(
                          fontSize: 65,
                          fontFamily: 'FSAriston',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = HexColor('FFEE52'),
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'ĐĂNG NHẬP',
                        style: TextStyle(
                          fontSize: 65,
                          fontFamily: 'FSAriston',
                          color: HexColor('000000'),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 280,
                    height: 52,
                    child: TextField(
                      controller: txtEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Linotte',
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Linotte',
                            fontSize: 18),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 280,
                    height: 52,
                    child: TextField(
                      obscureText: true,
                      controller: txtPass,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Linotte',
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        border: OutlineInputBorder(),
                        hintText: "Mật khẩu",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Linotte',
                            fontSize: 18),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextButton(
                  child: const Text(
                    'Quên mật khẩu',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'LinotteBold',
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuenMatKhau()),
                    );
                  },
                ),
              ),
              InkWell(
                child: Container(
                  child: Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/btn-2.png',
                          fit: BoxFit.fill,
                          height: 65,
                          width: 220,
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
                              color: Colors.black),
                        ),
                      ),
                      left: 125,
                      top: 5,
                    ),
                  ]),
                ),
                onTap: () async {
                  try {
                    LoadingDialog.showLoadingDialog(context, 'Đang tải...');
                    final _user = await _auth.signInWithEmailAndPassword(
                        email: txtEmail.text, password: txtPass.text);

                    _auth.authStateChanges().listen((event) {
                      if (event != null) {
                        LoadingDialog.hideLoadingDialog(context);
                        txtEmail.clear();
                        txtPass.clear();
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'TrangChu',
                          (route) => false,
                        );
                      } else {
                        LoadingDialog.hideLoadingDialog(context);
                        final snackBar = SnackBar(
                            content: Text('Email hoặc mật khẩu không đúng'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                  } catch (e) {
                    LoadingDialog.hideLoadingDialog(context);
                    MsgDialog.showMsgDialog(context,
                        'Email hoặc mật khẩu không đúng vui lòng thử lại');
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Bạn chưa có tài khoản??',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Linotte',
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Đăng ký ngay',
                        style: TextStyle(
                          color: HexColor('f1c500'),
                          fontFamily: 'LinotteBold',
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DangKy()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
