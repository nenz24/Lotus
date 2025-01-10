import 'package:flutter/material.dart';
import 'package:myapp/model/data.dart';
import 'webscreen/web_screen.dart';
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
            return ScreenMobile();
          } else if (constraints.maxWidth <= 1200) {
            return FirstScreenWeb(gridCount: 4);
          } else {
            return FirstScreenWeb(
              gridCount:
                  dataItemsList.where((data) => data.isNew).toList().length,
            );
          }
        },
      ),
    );
  }
}
