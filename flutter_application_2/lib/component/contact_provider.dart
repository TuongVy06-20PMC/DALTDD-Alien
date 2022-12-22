import 'dart:convert';

import 'package:flutter/services.dart';
import 'contact_object.dart';
class ContactProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('Data/data.json');
    var data = json.decode(jsonText);
    return data['level'];
  }

  static Future<List<Level>> getAllContacts() async {
    List<Level> lsresult = [];
    List<dynamic> data = await readJsonData();
    lsresult = data.map((e) => Level.fromJson(e)).toList();
    return lsresult;
  }

 
}