import 'package:flutter/material.dart';
import 'package:mynewapp/Tutorial4/choose_location.dart';
import 'package:mynewapp/Tutorial4/home.dart';
import 'package:mynewapp/Tutorial4/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  }
));