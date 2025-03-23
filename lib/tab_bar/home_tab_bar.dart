import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tab_bar/tab_bar_views/tab_bar_one.dart';
import 'package:flutter_tutorial/tab_bar/tab_bar_views/tab_bar_two.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> with TickerProviderStateMixin {
  final List<Tab> tabs = [
    Tab(
      text: "Tab 1",
    ),
    Tab(
      text: "Tab 2",
    ),
  ];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this,animationDuration: Duration(seconds: 1));
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create TabBar Without AppBar !",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(25),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffCFEDFC),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TabBar(
                        controller: tabController,
                        indicatorWeight: 2,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: Color(0xff0A638F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        unselectedLabelStyle:
                            TextStyle(fontSize: 16, color: Colors.black),
                        tabs: tabs
                    ),
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                  children: [
                TabBarOne(),
                TabBarTwo(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
