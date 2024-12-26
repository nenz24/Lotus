import 'mobile_screen1.dart';
import 'mobile_screen2.dart';
import 'mobile_screen3.dart';
import 'package:flutter/material.dart';

class ScreenMobile extends StatefulWidget {
  const ScreenMobile({Key? key}) : super(key: key);
  @override
  State<ScreenMobile> createState() => _ScreenMobile();
}

class _ScreenMobile extends State<ScreenMobile> {
  int _SelectedIndex = 0;

  List<Widget> _pages = [
    FirstScreenMobile(),
    SecondScreenMobile(),
    ThirdScreenMobile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _SelectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedIconTheme: IconThemeData(color: Colors.amber),
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'For You'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Account'),
          ],
          currentIndex: _SelectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
