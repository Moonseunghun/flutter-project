import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hubs/screens/cosmeticinform.dart';
import 'package:hubs/screens/myPage.dart';
import 'package:hubs/screens/setting.dart';
import 'cosmeticreview.dart';
import 'homepage.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

Future<void> loadJSONData() async {
  String jsonData = await rootBundle.loadString('assets/jsonfile/YOUTUBE.json');
  Map<String, dynamic> data = jsonDecode(jsonData);
  print(data);

  // JSON 데이터 사용 예시
  String product_name = data['P_NM'];
  String influencer_name = data['INFL'];
  String summary = data['SUMM'];
  String URL = data['URL'];

  print('P_Name: $product_name');
  print('I_Name: $influencer_name');
  print('SUM: $summary');
  print('URL: $URL');
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'hubs',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // 기본 텍스트 글자색 지정
          bodyMedium: TextStyle(color: Colors.green), // 다른 스타일의 글자색 지정
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name:'/', page:() => NetflixApp()),
        GetPage(name:'/cosmetic_inform', page:() => CosmeticInform()),
        GetPage(name:'/cosmetic_review', page:() => CosmeticReview()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}


// 제일 먼저 시작되는 화면
class RootScaffold extends StatelessWidget{

  // 탭별 화면
  static List<Widget> tabPages = <Widget>[
    NetflixApp(),
    MyPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {

    // 페이지 전환을 위한 MyBottomNavgationBarController 인스턴스화 (의존성 주입)
    // Get.put : 수명이 페이지와 같음
    //Get.put(MyBottomNavgationBarController());

    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}