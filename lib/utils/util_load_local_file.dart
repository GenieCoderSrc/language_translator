import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class UtilLoadLocalFile {
  static Future<Map<String, dynamic>> loadJson(String path) async {
    final String content = await rootBundle.loadString(path);
    return jsonDecode(content) as Map<String, dynamic>;
  }

//  static String utf8convert(String text) {
//    List<int> bytes = text.toString().codeUnits;
//    return utf8.decode(bytes);
//  }

  ///Singleton repository
  static final UtilLoadLocalFile _instance = UtilLoadLocalFile._internal();

  factory UtilLoadLocalFile() {
    return _instance;
  }

  UtilLoadLocalFile._internal();
}
