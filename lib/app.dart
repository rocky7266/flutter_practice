import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'form_login.dart';
import 'module7_class2.dart';
import 'module7_class3.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (context , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter batch 10',
    home: LoginPage(),

    );
    }
    );
  }
}
