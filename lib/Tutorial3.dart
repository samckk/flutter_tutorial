import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()));

class Quote {
  String text;
  String author;

  Quote({this.text, this.author});

/*
  Quote myquote = Quote(text: text1, author: author1)

  IS EQUIVALENT TO:

  Quote(String text, String author){
    this.text = text;
    this.author = author;
  }
  Quote myquote = Quote(text1, author1)
   */
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int i = 0;
  List<Quote> quotes = [
    Quote(author: 'Author1', text: 'Text1'),
    Quote(author: 'Author2', text: 'Text2'),
    Quote(author: 'Author3', text: 'Text3'),
  ];

  @override // build method override StatelessWidget
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Text('$i',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.grey[600],
                    fontFamily: 'IndieFlower'
                )),
            Column(
              children: quotes.map((quote){
              return QuoteCard(
                  quote: quote,
                  delete: () {
                    setState((){
                      quotes.remove(quote);
                    });
                  });
            }).toList()
            ),
            Column(
              children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              i += 1;
            });
          },
          child: Text('click'),
        )
    )
    ;
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(quote.text),
          SizedBox(width: 10, height: 10),
          Text(quote.author),
          SizedBox(),
          FlatButton.icon(
            onPressed: delete,
            label: Text('Delete icon'),
            icon: Icon(Icons.delete)
          )
        ]
      )
    );
  }
}


