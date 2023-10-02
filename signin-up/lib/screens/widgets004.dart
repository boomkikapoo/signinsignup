import 'package:flutter/material.dart';

//Column and Expanded

class Widgets004 extends StatelessWidget {
  const Widgets004({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(flex: 3,child: Container(width: double.infinity,height: 200,color: Colors.red.shade400,)),
        Expanded(flex: 4,child: Container(width: double.infinity,height: 200,color: Colors.blue.shade400,)),
        Expanded(flex: 2,child: Container(width: double.infinity,height: 200,color: Colors.green.shade400,)),
      ],
    );
  }
}