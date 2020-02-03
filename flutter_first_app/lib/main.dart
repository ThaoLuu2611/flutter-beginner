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
        backgroundColor: Colors.red[700],//press ctrl+q to view more color
      ),
      body: Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
          size: 50.0,
      )),

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