import 'package:flutter/material.dart';

import 'module7_class2.dart';
import 'module7_class3.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter batch 10',
      home: HomePage(),

    );
  }
}
