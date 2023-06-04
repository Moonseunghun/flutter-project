import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hubs/screens/cosmeticinform.dart';
import 'package:hubs/screens/myPage.dart';
import 'package:hubs/screens/setting.dart';
import 'cosmeticreview.dart';
import 'homepage.dart';
import 'dart:convert';
import 'package:flutter/services.dart';



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
        GetPage(name: '/', page: () => NetflixApp()),
        GetPage(name: '/cosmetic_inform', page: () => CosmeticInform()),
        GetPage(name: '/cosmetic_review', page: () => CosmeticReview()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

// 제일 먼저 시작되는 화면
class RootScaffold extends StatelessWidget {
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
