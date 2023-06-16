import 'package:flutter/material.dart';
import 'package:flutter_example_book_list/screens/books.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter Example Book List", home: Books());
  }
}
