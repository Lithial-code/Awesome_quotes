import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wild'),
    Quote(text: 'I have nothing to declare except my genius', author:'Oscar Wild'),
    Quote(text: 'The truth is rarely pure and never simple', author:'Oscar Wild'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //Curly braces required to build strings with object variables
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){ //this defines the delete function and passes it through to the quote card
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}

