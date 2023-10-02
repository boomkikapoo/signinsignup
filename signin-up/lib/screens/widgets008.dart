import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_beginner/constant/my_constant.dart';

//Staggered Grid View
//Comand flutter in project:
// flutter pub add flutter_staggered_grid_view
// flutter pub get

class Widgets008 extends StatefulWidget {
  Widgets008({Key? key}) : super(key: key);

  @override
  State<Widgets008> createState() => _Widgets008State();
}

class _Widgets008State extends State<Widgets008> {
  final List<Map<String, dynamic>> _items = List.generate(
      50, //200 items
      (index) => {
            "id": index,
            "title": "Item $index",
            "height": Random().nextInt(150) + 50.5
          });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: _items.length,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      // the number of columns
      crossAxisCount: 3,
      // vertical gap between two items
      mainAxisSpacing: 4,
      // horizontal gap between two items
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        // display each item with a card
        return Card(
          // Give each item a random background color
          color: Color.fromARGB(
            Random().nextInt(256), 
            Random().nextInt(256),
            Random().nextInt(256), 
            Random().nextInt(256),),
          key: ValueKey(_items[index]['id']),
          child: SizedBox(
            height: _items[index]['height'],
            child: Center(
              child: Text(_items[index]['title']),
            ),
          ),
        );
      },
    );
  }
}
