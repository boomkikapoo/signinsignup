import 'package:flutter/material.dart';

import 'package:flutter_masonry_view/flutter_masonry_view.dart';

//Staggered Grid View
//Comand flutter in project:
// flutter pub add flutter_masonry_view
// flutter_masonry_view: ^0.0.2
// flutter pub get

class Widgets009 extends StatelessWidget {
  Widgets009({Key? key}) : super(key: key);

  final _items = [
    'assets/image/p1.jpg',
    'assets/image/p2.jpg',
    'assets/image/p3.jpg',
    'assets/image/p1.jpg',
    'assets/image/p2.jpg',
    'assets/image/p3.jpg',
    'assets/image/p1.jpg',
    'assets/image/p2.jpg',
    'assets/image/p3.jpg',
    'assets/image/p1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MasonryView(
        listOfItem: _items,
        numberOfColumn: 2,
        itemBuilder: (item) {
          return Image.asset(item);
        },
      ),
    );
  }
}