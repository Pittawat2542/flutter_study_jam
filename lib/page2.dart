import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final List<WordPair> wordPairs;

  const Page2({Key key, @required this.wordPairs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          tiles: wordPairs
              .map(
                (x) => ListTile(
                  title: Text(x.asPascalCase),
                  onTap: () {
                    Navigator.pop(context, x);
                  },
                ),
          ),
          context: context,
        ).toList(),
      ),
    );
  }
}
