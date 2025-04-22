import 'dart:ui_web';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter batch 10',
      home: Home(),

    );

}

  }
class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Text("This is body text",
      style: TextStyle(fontSize: 50,
      color: Colors.blue),
      ),
    );
  }
}