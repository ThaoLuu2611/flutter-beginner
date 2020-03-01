import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

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
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
  ];

  Widget templateCard(quote){
    return BookCard(book:quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Flutter'),
        ),
        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: EdgeInsets.all(30),
          children: books.map((book) => templateCard(book)).toList(),
        ));
  }

}

class BookCard extends StatelessWidget {
  final Quote book;

  BookCard({this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.grey,
      child: Padding(

        padding: EdgeInsets.all(12),
        child: Text(
          book.text,
          style: TextStyle(
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
