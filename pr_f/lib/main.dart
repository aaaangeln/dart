import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget biuld(BuildContext context){
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Application'),
          centerTitle: true,
        ),
        body: Center(
          child:
          Text('tyt tekst'),
        ),
      ),
    );
  }
}