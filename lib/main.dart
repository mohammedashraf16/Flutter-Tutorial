import 'package:flutter/material.dart';
import 'package:flutter_tutorial/lottie/home_view.dart';

void main() {
  runApp(const MyApp());
}
// Colors(0xffCFEDFC) blueWhite
// Colors(0xff0A638F)
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
