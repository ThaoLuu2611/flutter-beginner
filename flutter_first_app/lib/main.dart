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

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('hello, world'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: Text('click me')
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(5.0),
            child: Text('inside container'),

          ),
          Text('my name is Thao'),
          Text('hihi')
        ],// the children should be a list of widget

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