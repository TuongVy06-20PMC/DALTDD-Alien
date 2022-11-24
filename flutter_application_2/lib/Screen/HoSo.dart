import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/ChinhSuaHoSo.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class HoSo extends StatefulWidget {
  const HoSo({super.key});

  @override
  State<HoSo> createState() => _HoSoState();
}

class _HoSoState extends State<HoSo> {
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
              margin: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                              textAlign: TextAlign.center,
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
                    padding: EdgeInsets.only(left: 200),
                    child: TextButton(
                        child: Text(
                          'Chỉnh sửa',
                          style: TextStyle(
                            color: HexColor('F0CB05'),
                            fontFamily: 'FSAriston',
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChinhSuaHoSo()),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}//thay doi