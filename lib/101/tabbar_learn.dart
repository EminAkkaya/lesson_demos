import 'package:flutter/material.dart';

class TabbarLearn extends StatefulWidget {
  const TabbarLearn({super.key});

  @override
  State<TabbarLearn> createState() => _TabbarLearnState();
}

class _TabbarLearnState extends State<TabbarLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(tabs: [Tab(text: "Page 1"), Tab(text: "Page 2")]),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.green),
            Container(color: Colors.red),
          ],
        ),
      ),
    );
  }
}
