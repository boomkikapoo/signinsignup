import 'package:flutter/material.dart';

import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

//Flutter cmd:
// contained_tab_bar_view 0.8.0
// flutter pub add contained_tab_bar_view
// contained_tab_bar_view: ^0.8.0
// flutter pub get

class Widgets011 extends StatelessWidget {
  const Widgets011({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
      child: ContainedTabBarView(
        tabs: [
          Text('First'),
          Text('Second'),
        ],
        views: [Container(color: Colors.red), Container(color: Colors.green)],
        onChange: (index) => print(index),
      ),
    );
  }
}
