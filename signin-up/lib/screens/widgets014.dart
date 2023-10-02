import 'package:flutter/material.dart';

// List and Column

class Widgets014 extends StatelessWidget {
  const Widgets014({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 200,color: Colors.deepPurple,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 200,color: Colors.deepPurple,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 200,color: Colors.deepPurple,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 200,color: Colors.deepPurple,),
        ),
      ],
    );
  }
}