import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> getJson() async {
  Map<String, dynamic> _json;
  final uri = Uri.https('randomuser.me', '/api/1.3');
  final response = await http.get(uri);
  if ((response.statusCode == 200)) {
    _json = json.decode(response.body);
  } else {
    _json = await _getJsonFromFile();
  }

  return _json;
}

Future<Map<String, dynamic>> _getJsonFromFile() async {
  final Map<String, dynamic> _json = json.decode(await rootBundle.loadString('assets/rundom_json.json'));
  return _json;
}
