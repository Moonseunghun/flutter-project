import 'package:flutter/material.dart';

Widget listItem(String img, String movieName) {
  return Container(
    margin: EdgeInsets.only(right: 8.0),
    width: 100.0,
    height: 100.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          movieName,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
      ],
    ),
  );
}
