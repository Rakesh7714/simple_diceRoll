import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          ' Dicee',
          style: TextStyle(
            color: Colors.blue,
              fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Dicepage(),
    ),
  ));
}
class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNum=6;
  int rightDiceNum=1;
  changeDicePosition(){
    leftDiceNum=Random().nextInt(6)+1;
    rightDiceNum=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDicePosition();
                });
              },
              child: Image.asset('lib/images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                 changeDicePosition();
                });
              },
              child: Image.asset('lib/images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}




