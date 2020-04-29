import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/second.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage1;
  AssetImage diceImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage1 = one;
      diceImage2 = two;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage1;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage1 = one;
        newImage2 = six;
        break;
      case 2:
        newImage1 = two;
        newImage2 = five;
        break;
      case 3:
        newImage1 = three;
        newImage2 = four;
        break;
      case 4:
        newImage1 = four;
        newImage2 = three;
        break;
      case 5:
        newImage1 = five;
        newImage2 = two;
        break;
      case 6:
        newImage1 = six;
        newImage2 = one;
        break;
      default:
    }

    setState(() {
      diceImage1 = newImage1;
      diceImage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Dice Roller'),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: diceImage1,
                  width: 100.0,
                  height: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Image(
                  image: diceImage2,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: RaisedButton(
                    onPressed: rollDice,
                    color: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    child: Text(
                      'Roll the dice',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
