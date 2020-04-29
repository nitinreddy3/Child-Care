import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.orange,
  ];

  var btnColors = [
    Colors.amberAccent,
    Colors.brown,
    Colors.teal,
    Colors.green,
    Colors.pink,
    Colors.orange,
  ];

  var currentColor = Colors.white;
  var currentBtnColor = Colors.black;

  changeColor() {
    var rnd = Random().nextInt(6);
    var btnRnd = Random().nextInt(5);
    setState(() {
      currentColor = colors[rnd];
      currentBtnColor = btnColors[btnRnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: currentBtnColor,
          child: Text(
            'Change Color',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: changeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
