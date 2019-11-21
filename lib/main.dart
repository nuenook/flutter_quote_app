import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuateList(),
));


class QuateList extends StatefulWidget {

  @override
  _QuateListState createState() => _QuateListState();
}

class _QuateListState extends State<QuateList> {

  List<Quote> qoutes = [
    Quote(author: 'Osca Wilde',text: 'Be yourself; everyone els is already taken' ),
    Quote(author: 'Osca Wilde',text: 'I have nothing to declare except my genius eiei ' ) ,
    Quote(author: 'Osca Wilde',text: 'The truth is rarely pure and never simple' ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quetes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              qoutes.remove(quote);
            });
          })).toList(),
      )
    );
  }
}

