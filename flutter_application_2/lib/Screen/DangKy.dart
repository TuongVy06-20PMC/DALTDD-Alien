import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DangNhap.dart';
import 'package:intl/intl.dart';

class DangKy extends StatefulWidget {
  const DangKy({super.key});

  @override
  State<DangKy> createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
  TextEditingController dateinput = TextEditingController();
  bool _obscureText = true;
  void _XemMatKhau() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: HexColor('0C205B')),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //margin: EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 150,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Stack(
                            children: <Widget>[
                              // Stroked text as border.
                              Text(
                                'ĐĂNG KÝ',
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
                                'ĐĂNG KÝ',
                                style: TextStyle(
                                  fontSize: 65,
                                  fontFamily: 'FSAriston',
                                  color: HexColor('000000'),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Linotte',
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black, width: 2), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(),
                          hintText: "Họ tên",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Linotte',
                              fontSize: 18),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        controller: dateinput,
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
                          hintText: "Ngày sinh",
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.calendar_month),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Linotte',
                              fontSize: 18),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          if (pickedDate != null) {
                            print(pickedDate);
                            String formattedDate =
                                DateFormat('dd-MM-yyyy').format(pickedDate);
                            print(formattedDate);
                            setState(() {
                              dateinput.text = formattedDate;
                            });
                          } else {
                            print("Ngày không được chọn");
                          }
                        },
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
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
                const Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
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
                          hintText: "Tên đăng nhập",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Linotte',
                              fontSize: 18),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        obscureText: _obscureText,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Linotte',
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: _XemMatKhau,
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
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
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        obscureText: _obscureText,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Linotte',
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: _XemMatKhau,
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          border: OutlineInputBorder(),
                          hintText: "Nhập lại mật khẩu",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Linotte',
                              fontSize: 18),
                        ),
                      ),
                    )),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/btn-2.png',
                            fit: BoxFit.fill,
                            height: 70,
                            width: 220,
                          )
                        ],
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Đăng Ký',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'FSAriston',
                                color: Colors.black),
                          ),
                        ),
                        left: 137,
                        top: 6,
                      ),
                    ]),
                  ),
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: HexColor('fcdf69'),
                      
                      content: const Text(
                        'Chào mừng bạn đến với AlienQuizzz',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily: 'LinotteBold', fontSize: 22),
                      ),
                      actions: <Widget>[
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                                            height: 50,
                                            width: 140,
                                          )
                                        ],
                                      ),
                                      Positioned(
                                        child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Text(
                                            'Đăng Nhập',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'LinotteBold',
                                                color: Colors.black),
                                          ),
                                        ),
                                        top: 13,
                                        left: 35,
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DangNhap()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Positioned(
                              child: Image.asset(
                                'assets/monster-1.png',
                                fit: BoxFit.fill,
                                height: 50,
                                width: 50,
                              ),
                              left: 60,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Bạn đã có tài khoản??',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Linotte',
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Đăng Nhập ngay',
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
                                builder: (context) => const DangNhap()),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ))
      ]),
    ));
  }
}
