import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('My first flutter app'),//propertice and value
        centerTitle: true,
        backgroundColor: Colors.red[200],//press ctrl+q to view more color
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 20, 20),
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        child: Text('hihi'),
        color: Colors.yellow,
      ),
      //every widget is class
      floatingActionButton: FloatingActionButton(//instance of class
        child:Text('click here'),
        onPressed: (){

        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.red[200],
      ),

    );

  }
}