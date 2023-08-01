import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home.dart';
import 'package:flutter_todo/pages/mainscreen.dart';

void main()=>runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepPurpleAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/todo': (context) => Home(),
  },
));

