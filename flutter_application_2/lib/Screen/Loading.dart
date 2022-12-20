import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/Screen1.dart';

import 'Dialog/loading.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() {
    return LoadingState();
  }
}

class LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 80, top: 150),
            child: Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              width: 200,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 100),
              child: CircularProgressIndicator(color: Colors.black)),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: TextButton(
              child: const Text(
                'Bắt đầu...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'FSAriston',
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
