import 'package:flutter/material.dart';
import 'custom_widgets/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
