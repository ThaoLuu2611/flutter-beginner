import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'book_card.dart';

void main() => runApp(MaterialApp(
      home: MyList(),
    ));

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Quote> books = [
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of tjhe Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Flutter'),
        ),
        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: EdgeInsets.all(30),
          children: books.map((book) => BookCard(book:book)).toList(),
        ));
  }

}
