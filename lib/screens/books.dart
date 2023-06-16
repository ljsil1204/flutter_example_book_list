import 'package:flutter/material.dart';
import 'package:flutter_example_book_list/screens/book_detail.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 목록 앱"),
      ),
      body: ListView(
        children: <Widget>[
          BookTile(
              title: "다트 언어배우기",
              subTitle: "플러터",
              description: "초보자도 쉽게",
              image:
                  "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg"),
          BookTile(
              title: "자바스크립트 언어배우기",
              subTitle: "리액트네이티브",
              description: "초보자도 쉽게",
              image:
                  "https://item.kakaocdn.net/do/9fc764ca0704ce3ebaba47c50f8b7e8f617ea012db208c18f6e83b1a90a7baa7"),
          BookTile(
              title: "코틀린 언어배우기",
              subTitle: "앱",
              description: "초보자도 쉽게",
              image:
                  "https://cdn.pixabay.com/photo/2018/02/05/23/05/death-valley-3133502_1280.jpg"),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => BookDetail(
                  title: title,
                  subTitle: subTitle,
                  description: description,
                  image: image,
                )));
      },
    );
  }
}
