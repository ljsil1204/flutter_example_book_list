import 'package:flutter/material.dart';
import 'package:flutter_example_book_list/models/book.dart';
import 'package:flutter_example_book_list/repositories/book_repository.dart';
import 'package:flutter_example_book_list/screens/book_detail.dart';

class Books extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 목록 앱"),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return BookTile(book: books[index]);
          }),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;

  BookTile({required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => BookDetail(
                  book: book,
                )));
      },
    );
  }
}
