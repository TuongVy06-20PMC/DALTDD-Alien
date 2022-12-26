import 'package:flutter/material.dart';
import '../object/users.dart';

String Maxexp(User index)
{
   if (index.cap == 1) {
    return "100";
  } else if (index.cap == 2) {
    return "120";
  }else if (index.cap == 3) {
    return "140";
  }else if (index.cap == 4) {
    return "160";
  }else if (index.cap == 5) {
    return "180";
  }else if (index.cap == 6) {
    return "200";
  }else if (index.cap == 7) {
    return "220";
  }else if (index.cap == 8) {
    return "240";
  }else if (index.cap == 9) {
    return "260";
  }else {
    return "2000";
  }
}

int percentexp(User index){
   if (index.cap == 1) {
    return 100;
  } else if (index.cap == 2) {
    return 120;
  }else if (index.cap == 3) {
    return 140;
  }else if (index.cap == 4) {
    return 160;
  }else if (index.cap == 5) {
    return 180;
  }else if (index.cap == 6) {
    return 200;
  }else if (index.cap == 7) {
    return 220;
  }else if (index.cap == 8) {
    return 240;
  }else if (index.cap == 9) {
    return 260;
  }else {
    return 2000;
  }
}
int kinhnghiem(User accounts)
{
  int nowkn=accounts.kinhnghiem;
  return nowkn.toInt();
}