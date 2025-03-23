import 'package:flutter/material.dart';
import 'package:flutter_tutorial/lottie/home_view.dart';
import 'package:flutter_tutorial/tab_bar/home_tab_bar.dart';

void main() {
  runApp(const MyApp());
}
// Colors(0xffCFEDFC) blueWhite
//
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeTabBar(),
    );
  }
}

