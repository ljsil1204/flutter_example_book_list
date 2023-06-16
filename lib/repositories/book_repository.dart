import 'package:flutter_example_book_list/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book(
        title: "다트 언어배우기",
        subTitle: "플러터",
        description: "초보자도 쉽게",
        image:
            "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg"),
    Book(
        title: "자바스크립트 언어배우기",
        subTitle: "리액트네이티브",
        description: "초보자도 쉽게",
        image:
            "https://item.kakaocdn.net/do/9fc764ca0704ce3ebaba47c50f8b7e8f617ea012db208c18f6e83b1a90a7baa7"),
    Book(
        title: "코틀린 언어배우기",
        subTitle: "앱",
        description: "초보자도 쉽게",
        image:
            "https://cdn.pixabay.com/photo/2018/02/05/23/05/death-valley-3133502_1280.jpg")
  ];

  List<Book> getBooks() {
    return _dummyBooks;
  }
}
