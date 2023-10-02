import 'package:flutter/material.dart';
// TAB BAR with ICON
import 'pages/first_tab.dart';
import 'pages/second_tab.dart';
import 'pages/third_tab.dart';

class Widgets012 extends StatelessWidget {
  const Widgets012({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // Expanded(
          //   child: TabBarView(
          //     children: [
          //       Container(
          //         color: Colors.green,
          //         child: Center(
          //           child: Text('1st TAB'),
          //         ),
          //       ),
          //       Container(
          //         color: Colors.pink,
          //         child: Center(
          //           child: Text('2nd TAB'),
          //         ),
          //       ),
          //       Container(
          //         color: Colors.yellow,
          //         child: Center(
          //           child: Text('3rd TAB'),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          Expanded(
            child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
