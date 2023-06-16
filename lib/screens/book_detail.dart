import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("book title"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Image.network(
            "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg",
            height: 200,
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "다트 배우기",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "초보자도 쉽게",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Contact",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.blue,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Route",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.save,
                    color: Colors.blue,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    "Save",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("이책은 쉽고 재밌습니다."),
          )
        ],
      ),
    );
  }
}
