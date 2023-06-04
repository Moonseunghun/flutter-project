import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../item/list_item.dart';
import '../item/slider_item.dart';

class Influencer_page extends StatelessWidget {
  String imgurl="";
  String name="";
  String information="";

  List<String> movieCarousselUrl = [
    "https://photo.sentv.co.kr/photo/2022/12/14/20221214093258.jpg",
    "https://image.news1.kr/system/photos/2020/3/27/4122347/article.jpg/dims/optimize",
    "https://img.marieclairekorea.com/2021/08/mck_610cd77841fce.jpeg",
    "https://img.hankyung.com/photo/201901/AA.18811964.1.jpg",
  ];
  List<String> movieTitle = [
    "Influencer A",
    "Influencer B",
    "Influencer C",
    "Influencer D"
  ];
  List<String> movieImageUrl = [
    "https://photo.sentv.co.kr/photo/2022/12/14/20221214093258.jpg",
    "https://cdnimage.ebn.co.kr/news/201901/news_1547450221_968730_main1.jpg",
    "https://www.meconomynews.com/news/photo/202101/49577_56959_4850.jpg",
    "https://img.hankyung.com/photo/201901/AA.18811964.1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    if (arguments == 'risabae') {
      name = "RISABAE";
      imgurl = "https://yt3.googleusercontent.com/ytc/AGIKgqN5icPFVdAi20S5KeoAvpS4ojuWrykdHbmAHexUTg=s900-c-k-c0x00ffffff-no-rj";
      information = "risabaeofficial@gmail.com\nhttps://instagram.com/risabae_art";
    } else if(arguments == 'saerom_min') {
      name = "Saerom Min개코의 오픈스튜디오";
      imgurl = "https://yt3.googleusercontent.com/ytc/AGIKgqMFrhFzi8aXBrQVeLEss1sJJlTHbWq8BSgnY8sHAA=s900-c-k-c0x00ffffff-no-rj";
      information = "개코의 오픈스튜디오, 민새롬 입니다❤️\nInstagram | @sr531\nE-mail | makeupbysaerom@naver.com\nBlog | blog.naver.com/sr531";
    }
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imgurl, // 이미지 주소
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //let's start by building our carousel slider
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "information",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    information,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "Skincare",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //let's create a new custom widget for our list item
                        GestureDetector(
                          child: listItem(movieImageUrl[0], "A"),
                          onTap: () => Get.toNamed('/cosmetic_inform'),
                        ),
                        listItem(movieImageUrl[1], "B"),
                        listItem(movieImageUrl[2], "C"),
                        listItem(movieImageUrl[3], "D"),
                      ],
                    ),
                  ),
                  Text(
                    "Make Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //let's create a new custom widget for our list item
                        GestureDetector(
                          child: listItem(movieImageUrl[0], "A"),
                          onTap: () => Get.toNamed('/inf_inform'),
                        ),
                        listItem(movieImageUrl[1], "B"),
                        listItem(movieImageUrl[2], "C"),
                        listItem(movieImageUrl[3], "D"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}
