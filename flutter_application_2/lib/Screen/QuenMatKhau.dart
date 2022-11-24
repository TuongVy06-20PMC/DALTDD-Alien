import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DatLaiMatKhau.dart';

class QuenMatKhau extends StatefulWidget {
  const QuenMatKhau({super.key});

  @override
  State<QuenMatKhau> createState() => _QuenMatKhauState();
}
class _QuenMatKhauState extends State<QuenMatKhau> {
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
              decoration: BoxDecoration(color: HexColor('0C205B')),
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
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 280,
                  height: 56,
                  child: TextFormField(
                    controller: emailController,
                    cursorColor:Colors.white,
                    textInputAction: TextInputAction.done,
                    decoration:const InputDecoration(
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    /*validator: (email)=>
                      email !=null && !EmailValidator.validate(email)
                        ? 'Nhập email hợp lệ'
                        :null,
                        */
                  ),
                ),
                ),
                SizedBox(height: 20,),
                 ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                     backgroundColor: HexColor('FFEE52'),
                  minimumSize: Size(280, 50),
                  side: const BorderSide(width: 2, color: Colors.black),
                  ),
                  icon: Icon(Icons.email_outlined,color: Colors.black,), 
                  label: Text('Đặt lại mật khẩu',style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LinotteBold',
                      color: Colors.black,
                    ),),
                  onPressed: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DatLaiMatKhau()),
                    );
                  }, 
                  )
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