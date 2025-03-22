import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 2,
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (bookMarked == false) {
              bookMarked = true;
              _controller.forward();
            } else {
              bookMarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.network(
              controller: _controller,
              width: 200,
              height: 200,
              fit: BoxFit.fill,
              "https://lottie.host/f1e7fd11-361f-4e9e-8479-393f949155c7/4FkQpUgi7x.json"),
        ),
      ),
    );
  }
}
// hello
// how to add lottie animation to your app ??
// i will explain it to you now ..
