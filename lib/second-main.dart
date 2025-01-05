import 'package:flutter/material.dart';
import 'package:myapp/mobilescreen/screen_mobile.dart';
import 'package:myapp/webscreen/shopping.dart';

class SecondMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 800) {
        return const ScreenMobile();
      } else if (constraints.maxWidth <= 1200) {
        return Shopping(
          gridCount: 3,
        );
      } else {
        return Shopping(gridCount: 4);
      }
    });
  }
}
