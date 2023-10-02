import 'package:flutter/material.dart';

//Row and Expanded

class Widgets003 extends StatelessWidget {
  const Widgets003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(flex: 3,child: Container(width: 100,height: 200,color: Colors.red.shade400,)), //flex: 3 = 30%
        Expanded(flex: 3, child: Container(width: 100,height: 200,color: Colors.blue.shade400,)),
        Expanded(flex: 3, child: Container(width: 100,height: 200,color: Colors.green.shade400,)),
      ],
    );
  }
}
