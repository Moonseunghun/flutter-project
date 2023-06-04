import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../item/list_item.dart';
import '../item/slider_item.dart';
import 'package:get/get.dart';

import 'influencer_page.dart';

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  //Here I'm going to place some dummy data for our movie images url and movie's titles
  //You can found all then links and the source code in the link bellow in the description
  //don't forget to subscribe

  List<String> movieCarousselUrl = [
    "https://photo.sentv.co.kr/photo/2022/12/14/20221214093258.jpg",
    "https://image.news1.kr/system/photos/2020/3/27/4122347/article.jpg/dims/optimize",
    "https://img.marieclairekorea.com/2021/08/mck_610cd77841fce.jpeg",
    "https://img.hankyung.com/photo/201901/AA.18811964.1.jpg",
  ];
  List<String> movieTitle = [
    "  Influencer A",
    "  Influencer B",
    "  Influencer C",
    "  Influencer D"
  ];
  List<String> movieImageUrl = [
    "https://yt3.googleusercontent.com/ytc/AGIKgqN5icPFVdAi20S5KeoAvpS4ojuWrykdHbmAHexUTg=s900-c-k-c0x00ffffff-no-rj",
    "https://yt3.googleusercontent.com/ytc/AGIKgqMFrhFzi8aXBrQVeLEss1sJJlTHbWq8BSgnY8sHAA=s900-c-k-c0x00ffffff-no-rj",
    "https://www.meconomynews.com/news/photo/202101/49577_56959_4850.jpg",
    "https://img.hankyung.com/photo/201901/AA.18811964.1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar 배경색은 흰색
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
          // let's start by building our carousel slider
          children: [
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                height: 280.0,
                enlargeCenterPage: true,
              ),
              items: [
                sliderItem(movieCarousselUrl[0], movieTitle[0]),
                sliderItem(movieCarousselUrl[1], movieTitle[1]),
                sliderItem(movieCarousselUrl[2], movieTitle[2]),
                sliderItem(movieCarousselUrl[3], movieTitle[3]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recomendation",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // let's create a new custom widget for our list item
                        GestureDetector(
                          // 이사베
                          child: listItem(movieImageUrl[0], "RISABAE"),
                          onTap: () {
                            Get.toNamed('/inf_inform');
                            Get.to(Influencer_page(), arguments: "risabae");
                          },
                        ),
                        GestureDetector(
                          // Saerom Min개코의 오픈스튜디오
                          child: listItem(movieImageUrl[1], "Saerom Min"),
                          onTap: () {
                            Get.toNamed('/inf_inform');
                            Get.to(Influencer_page(), arguments: "saerom_min");
                          },
                        ),
                        listItem(movieImageUrl[2], "C"),
                        listItem(movieImageUrl[3], "D"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Skincare",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // let's create a new custom widget for our list item
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
                  Text(
                    "Make Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // let's create a new custom widget for our list item
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