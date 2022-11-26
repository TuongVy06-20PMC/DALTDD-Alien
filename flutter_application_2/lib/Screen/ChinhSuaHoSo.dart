import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Screen/DangNhap.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:image_cropper/image_cropper.dart';
import '../component/Select_Photo_Options_Screen.dart';
import '../component/menu.dart';
import 'TrangChu.dart';

class ChinhSuaHoSo extends StatefulWidget {
  const ChinhSuaHoSo({super.key});

  @override
  State<ChinhSuaHoSo> createState() => _ChinhSuaHoSoState();
}

class _ChinhSuaHoSoState extends State<ChinhSuaHoSo> {
  TextEditingController dateinput = TextEditingController();
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  bool _obscureText = true;
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      img = await _cropImage(imageFile: img);
      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  Future<File?> _cropImage({required File imageFile}) async {
    CroppedFile? croppedImage =
        await ImageCropper().cropImage(sourcePath: imageFile.path);
    if (croppedImage == null) return null;
    return File(croppedImage.path);
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(
                onTap: _pickImage,
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _sKey,
        endDrawer: Menu(),
        body: Center(
            child: ListView(children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HoSo()),
                            );
                          }),
                          icon: Image.asset(
                            'assets/delete.png',
                            height: 25,
                            width: 25,
                            color: HexColor('FFF323'),
                          )),
                      IconButton(
                          onPressed: () => _sKey.currentState?.openEndDrawer(),
                          icon: Image.asset(
                            'assets/menu.png',
                            height: 30,
                            width: 30,
                            color: HexColor('FFF323'),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: <Widget>[
                      _image == null
                          ? CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                              radius: 50.0,
                            )
                          : CircleAvatar(
                              backgroundImage: FileImage(_image!),
                              radius: 50.0,
                            ),
                      Positioned(
                        top: 60,
                        bottom: 0.0,
                        right: 0.0,
                        left: 80,
                        child: InkWell(
                          onTap: () {
                            _showSelectPhotoOptions(context);
                          },
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.teal,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 90),
                 const Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 52,
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
                  SizedBox(height: 10),
                 Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 52,
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
                  SizedBox(height: 10),
                 const Padding(
                    padding: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 280,
                      height: 52,
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
                  SizedBox(height: 10),
                  InkWell(
                child: Container(
                  child: Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/btn.png',
                          fit: BoxFit.fill,
                          height: 60,
                          width: 230,
                        )
                      ],
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Lưu thay đổi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'FSAriston',
                              color: Colors.black),
                        ),
                      ),
                      left: 120,
                      top: 1,
                    ),
                  ]),
                ),
               onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: HexColor('fde787'),
                      title: Stack(
                        children: [
                          Text(
                            'Alien xin chào!!!',
                            style: TextStyle(
                                color: HexColor('f4a000'),
                                fontSize: 35,
                                fontFamily: 'FSAriston'),
                          ),
                          Positioned(
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChinhSuaHoSo()),
                                    );
                                }),
                                icon: Image.asset(
                                  'assets/cross.png',
                                  height: 30,
                                  width: 30,
                                )),
                            left: 190,
                            bottom: 1,
                          ),
                        ],
                      ),
                      content: const Text(
                        'Thay đổi thành công',
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
                                            width: 120,
                                          )
                                        ],
                                      ),
                                      Positioned(
                                        child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Text(
                                            'Đồng ý',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontFamily: 'FSAriston',
                                                color: Colors.black),
                                          ),
                                        ),
                                        top: 11,
                                        left: 32,
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HoSo()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
              ),
                ],
              )),
        ])));
  }
}