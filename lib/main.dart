import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //This part needs to be updated so that it uses the backend firebase database.
  //TODO
  List<Quote> quotes = [
    Quote(author: 'Charly', text: 'Do not take on more than you have time for'),
    Quote(author: 'Alex', text: 'If there is something that you enjoy doing, go after it'),
    Quote(author: 'Sheldon', text: 'Avoid carrying hate in your heart. Leave room for love.'),
    Quote(author: 'Mith', text: 'He who has more has more to give'),
  ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('LifeHack'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
      ),
    );
  }
}


