import 'package:flutter/material.dart';
import 'custom_widgets/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Toc To',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Tic Tac Toe'),
          ),
        ),
      ),
    );
  }
}
