import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> getYoutubeData() async {
  String jsonData = await rootBundle.loadString('assets/jsonfile/YOUTUBE.json');
  Map<String, dynamic> data = jsonDecode(jsonData);
  return data.entries.map((entry) => entry.value).toList();
}
