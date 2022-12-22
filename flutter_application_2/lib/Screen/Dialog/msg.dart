import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MsgDialog {
  static void showMsgDialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: HexColor('fcdf69'),
        content: Text(
          msg,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'LinotteBold', fontSize: 22),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/btn.png',
                              fit: BoxFit.fill,
                              height: 53,
                              width: 140,
                            )
                          ],
                        ),
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Text(
                              'Ừa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'LinotteBold',
                                  color: Colors.black),
                            ),
                          ),
                          top: 15,
                          left: 60,
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.of(context).pop(MsgDialog());
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
    );
  }
}
