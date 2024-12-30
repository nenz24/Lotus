import 'dart:math';

import 'package:flutter/material.dart';
import 'mobilescreen/mobile-screen-1/mobile_screen1.dart';
import 'webscreen/web_screen.dart';
import 'mobilescreen/mobile-screen-1/widget-screen/slider.dart';
import 'mobilescreen/screen_mobile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lotus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 800) {
            return const ScreenMobile();
          } else if (constraints.maxWidth <= 1200) {
            return FirstScreenWeb(gridCount: 4);
          } else {
            return FirstScreenWeb(gridCount: 5);
          }
        },
      ),
    );
  }
}
