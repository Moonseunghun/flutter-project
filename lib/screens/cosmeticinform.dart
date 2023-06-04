import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CosmeticInform extends StatelessWidget {

  String imgurl = "https://cdn.shopify.com/s/files/1/0592/6181/2894/products/3348901544115_0.jpg?v=1682319819&width=800";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar 배경색은 흰색
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'UNNIS',
          style: TextStyle(
            color: Colors.green, // 가운데 텍스트 색상은 초록색
            fontSize: 18, // 가운데 텍스트 크기는 18
            fontWeight: FontWeight.bold, // 가운데 텍스트 굵기는 bold
          ),
        ),
        centerTitle: true, // 가운데 정렬
      ),
      //backgroundColor:
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          children:[
            Image.network(
              imgurl, // 이미지 주소
              fit: BoxFit.fill,
            ),
          ]
        ),
      ),
    );
  }
}