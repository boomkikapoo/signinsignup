import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.pink,
      child: const Text('Page 1', style: TextStyle(fontSize: 30, color: Colors.white),),
    );
  }
}