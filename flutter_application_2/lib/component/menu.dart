import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screen/DangNhap.dart';
import '../Screen/CaiDat.dart';
class Menu extends StatefulWidget {
const Menu({Key? key}):super(key: key); 
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
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(12, 32, 91, 1),
            ),
            child: Image(image: AssetImage('assets/logo.png'),),
            ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Cài đặt'),
          onTap: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CaiDat()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Đăng xuất'),
          onTap: (){
            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DangNhap()),
                            );
          },
        ),
        ],
      ),
    );
  }
}