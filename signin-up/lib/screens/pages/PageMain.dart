import 'package:flutter/material.dart';

class PageMain extends StatelessWidget {
  const PageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.pink,
      child: const Text(
        'Welcome to Main Page',
        style: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
  }
}
