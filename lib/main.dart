import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    // TODO: implement createState
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];

  String defaultText = "Spanish numbers";

  void _displaySNumbers() {
    if (counter < 9) {
      setState(() {
        counter += 1;
        defaultText = spanishNumbers[counter];
      });
    } else {
      setState(() {
        counter = 0;
        defaultText = "Spanish numbers";
      });
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                '$counter',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _displaySNumbers,
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
