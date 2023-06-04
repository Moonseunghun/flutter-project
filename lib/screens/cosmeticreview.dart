import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CosmeticReview extends StatelessWidget {
  const CosmeticReview({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(25.0),
        // padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.network(
          'https://www.womansense.co.kr/upload/woman/article/202003/thumb/44510-407857-sampleM.jpg',
          fit: BoxFit.cover,
          // height: 200.0,
          // width: 200.0,
        ),
            SizedBox(height: 8),
            Text(
              "The OnLeaf - Vegan Hearleaf PHA Toner",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "ingredients",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // View All 버튼을 눌렀을 때의 동작 구현
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        )
      ),
    );
  }
}

// child: Column(
// children: [
// Container(
// padding: EdgeInsets.all(16.0),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// // flex: 2,
// child: Image.network(
// 'https://www.womansense.co.kr/upload/woman/article/202003/thumb/44510-407857-sampleM.jpg',
// fit: BoxFit.cover,
// height: 200.0,
// width: 200.0,
// ),
// ),
// Expanded(
// // flex: 2,
// child: Container(
// padding: EdgeInsets.symmetric(horizontal: 16.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'hubs로션',
// style: Theme.of(context).textTheme.headline6,
// ),
// SizedBox(height: 8.0),
// Text(
// '관련 정보 기입',
// style: Theme.of(context).textTheme.subtitle1,
// ),
// SizedBox(height: 100),
// ElevatedButton(
// onPressed: () {
// Get.toNamed('/cosmetic_inform');
// },
// child: Text('informaiton'),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(height: 100),
// Text(
// '화장품 리뷰',style: TextStyle(fontSize: 30)
// ),
// ],
// )