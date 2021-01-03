import 'package:flutter/material.dart';
/*
Stateless Widget
  -> MaterialApp
    -> Scaffold
      -> AppBar
        -> Text, centerTitle, backgroundColor
      -> Body
        -> Center
          -> SafeArea
            -> Text
              -> TextStyle
                -> fontSize, fontWeight, letterSpacing, color
      -> FloatingActionButton -> onPressed, Text
 */
void main() => runApp(MaterialApp(
  home: Home()));

class Home extends StatelessWidget {
  @override // build method override StatelessWidget
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[500],
            elevation: 0,
        ),
        body: Center(
          child: SafeArea(
            child: Text('hello ninjas.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.grey[600],
                  fontFamily: 'IndieFlower'
                )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
        )
    );
  }
}