import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/DangNhap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'QuenMatKhau.dart';

class DatLaiMatKhau extends StatefulWidget {
  const DatLaiMatKhau({super.key});

  @override
  State<DatLaiMatKhau> createState() => _DatLaiMatKhauState();
}
class _DatLaiMatKhauState extends State<DatLaiMatKhau> {
   bool _obscureText = true;
    void _XemMatKhau() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  final formKey=GlobalKey<FormState>();
 final emailController = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
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
                      'QUÊN MẬT KHẨU',
                      style: TextStyle(
                        fontSize: 55,
                        fontFamily: 'FSAriston',
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = HexColor('FFEE52'),
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'QUÊN MẬT KHẨU',
                      style: TextStyle(
                        fontSize: 55,
                        fontFamily: 'FSAriston',
                        color: HexColor('000000'),
                      ),
                    ),
                  ],
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
                            suffix:InkWell(
                              onTap: _XemMatKhau,
                              child: Icon(
                               _obscureText
                               ?Icons.visibility_off
                               :Icons.visibility
                              ),
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
                            suffix:InkWell(
                              onTap: _XemMatKhau,
                              child: Icon(
                               _obscureText
                               ?Icons.visibility_off
                               :Icons.visibility
                              ),
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
                SizedBox(height: 20,),
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
                          height: 70,
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
                      left: 115,
                      top: 6,
                    ),
                  ]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DangNhap()),
                  );
                },
              ),
              ],
            ),
          ),
      )
    );
    /*Future verifyEmail() async{
    showDialog(
      context:context,
      barrierDismissible:false,
      builder:(context)=>Center(child:CircularProgressIndicator()),
    );
    try{
      await FirebaseAuth.instance
      .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showSnackBar('Đặt lại mật khẩu được gửi');
      Navigator.of(context).popUntil((route) => route.isFirst);
    }on FirebaseAuthException catch(e){
      print(e);
      Utils.showSnackBar(e.message);
       Navigator.of(context).pop();
    }
    */
  }
}