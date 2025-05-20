import 'package:flutter/material.dart';
import 'package:lesson_demos/widgets/pageview_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _initialPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _initialPage = index;
          });
        },
        currentIndex: _initialPage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: PageView(
        controller: PageController(initialPage: _initialPage),
        children: [
          PageviewWidget(pageColor: Colors.red),
          PageviewWidget(pageColor: Colors.green),
          PageviewWidget(pageColor: Colors.blue),
        ],
      ),
    );
  }
}
