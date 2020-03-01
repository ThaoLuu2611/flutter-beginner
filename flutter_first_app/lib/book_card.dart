import 'package:flutter/material.dart';
import 'quote.dart';

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
