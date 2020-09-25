import 'package:flutter/material.dart';

class MyButtomNavigationBar extends StatefulWidget {
  @override
  _MyButtomNavigationBarState createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: onTabTapped,
      items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home",)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title: Text("Reports",)
          )
        ]
    );
  }
}
