
import 'mobile-screen-1/mobile_screen1.dart';
import 'mobile-screen-2/mobile_screen2.dart';
import 'mobile-screen-3/mobile_screen3.dart';
import 'package:flutter/material.dart';

class ScreenMobile extends StatefulWidget {
  const ScreenMobile({Key? key}) : super(key: key);

  @override
  State<ScreenMobile> createState() => ScreenMobileState();
}

class ScreenMobileState extends State<ScreenMobile> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      FirstScreenMobile(onStartShopping: () => changePage(1)),
      SecondScreenMobile(),
      ThirdScreenMobile(),
    ];
  }

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'For You'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => changePage(index),
      ),
    );
  }
}
