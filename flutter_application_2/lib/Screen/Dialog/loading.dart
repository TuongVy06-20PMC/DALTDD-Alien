import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoadingDialog {
  static void showLoadingDialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => new AlertDialog(
        backgroundColor: HexColor('fcdf69'),
        content: Text(
          msg,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'LinotteBold', fontSize: 22),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 115, bottom: 30),
              child: CircularProgressIndicator(color: Colors.black))
        ],
      ),
    );
  }

  static void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop(LoadingDialog);
  }
}
