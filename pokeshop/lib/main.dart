import 'package:flutter/material.dart';
import 'package:pokeshop/modules/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeShop',
      theme: ThemeData(
        primaryColor: Color(0xffff5048),
        accentColor: Color(0xff444),
      ),
      home: MyHomePage(title: 'PokeShop'),
    );
  }
}
