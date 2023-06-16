import 'package:flutter/material.dart';
import 'package:flutter_example_book_list/models/book.dart';

class BookDetail extends StatelessWidget {
  final Book book;

  BookDetail({required this.book});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Image.network(book.image, height: 200),
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
                          book.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        book.subTitle,
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
            child: Text(book.description),
          )
        ],
      ),
    );
  }
}
