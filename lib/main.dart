import 'package:flutter/material.dart';
import 'mobile/mobile-screen-1/mobile_screen1.dart';
import 'web_screen.dart';
import 'mobile/mobile-screen-1/widget-screen/slider.dart';
import 'mobile/screen_mobile.dart';

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
          } else {
            return FirstScreenWeb();
          }
        },
      ),
    );
  }
}
