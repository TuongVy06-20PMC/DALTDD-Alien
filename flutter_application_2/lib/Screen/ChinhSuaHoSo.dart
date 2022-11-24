import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class ChinhSuaHoSo extends StatefulWidget {
  const ChinhSuaHoSo({super.key});

  @override
  State<ChinhSuaHoSo> createState() => _ChinhSuaHoSoState();
}

class _ChinhSuaHoSoState extends State<ChinhSuaHoSo> {
  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.png'), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    height: 90,
                    width: 160,
                  ),
                  Image.asset(
                    'assets/user.png',
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: HexColor('FFEE52'),
                          borderRadius: BorderRadius.circular(6)),
                      height: 20,
                      width: 50,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 4, 3),
                          child: Row(children: [
                            Text(
                              'Cấp 1 ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'FSAriston'),
                            ),
                          ]))),
                  Container(
                      child: Text('TuongVy2812',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'FSAriston',
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
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
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Họ tên",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
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
                            fontFamily: 'FSAriston',
                            fontSize: 23,
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
                                fontFamily: 'FSAriston',
                                fontSize: 23),
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
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
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
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('FFEE52'),
                        minimumSize: Size(280, 20),
                        side: const BorderSide(width: 2, color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Lưu thay đổi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'FSAriston',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
