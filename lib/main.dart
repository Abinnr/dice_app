import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
      ),
      body: DicePage(),
    ),
  ),);
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var Dicenumber=3;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150.0,
          width: 150.0,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.green.shade900,
            ),
            onPressed: (){
              setState(() {
                print('$Dicenumber Button pressed');
                Dicenumber=Random().nextInt(6)+1;
              });
                
            },
            child: Image.asset('images/dices$Dicenumber.jpg'),
          ),
        ),
      ],
    );
  }
}
