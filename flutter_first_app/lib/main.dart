import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to flutter'),
      ),
      body: Center(
        child: RandomeWord(),
      )
    );
  }
}

class RandomWordState extends State<RandomeWord>{
  final List<WordPair> _suggestion = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 13);
  final Set<WordPair> saved = Set<WordPair>();
  Widget _suggestionList(){
    return ListView.builder(
        itemBuilder: (BuildContext _context, int i){
          if(i.isOdd){
            return Divider();
          }
          final index = i ~/ 2;
          if(index >= _suggestion.length)
            _suggestion.addAll(generateWordPairs().take(110));
          return _buildRow(_suggestion[index]);
        }

        );

  }

  Widget _buildRow(WordPair pair){
    final bool alreadySaved = saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved? Colors.red : Colors.green,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            saved.remove(pair);
          } else
            saved.add(pair);
        });
      },
    );
  }
  final WordPair wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    //return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('My list view'),
      ),
      body: _suggestionList()

    );
  }
}

class RandomeWord extends StatefulWidget{
  RandomWordState createState() => RandomWordState();
}