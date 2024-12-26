import 'package:flutter/material.dart';

class FirstScreenWeb extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Image.asset('images/logo.png', scale: 10,),

      ),
    );
  }
}