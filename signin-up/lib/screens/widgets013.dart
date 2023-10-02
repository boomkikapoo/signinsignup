import 'package:flutter/material.dart';
import '../constant/my_constant.dart';
import 'pages/PageOne.dart';
import 'pages/PageTwo.dart';
import 'pages/PageThree.dart';
import 'pages/PageMain.dart';

class NavgitorBottomBar extends StatefulWidget {
  NavgitorBottomBar({Key? key}) : super(key: key);

  @override
  State<NavgitorBottomBar> createState() => _NavgitorBottomBarState();
}

class _NavgitorBottomBarState extends State<NavgitorBottomBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PageMain();
            },
          ),
        );
      } else if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PageOne();
            },
          ),
        );
      } else if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PageTwo();
            },
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PageThree();
            },
          ),
        );
      }
    });
  }

  final List<Widget> pages = [
    Center(
      child: Text(
        'Home Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Message Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Settings Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Account Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _navigateBottomBar,
      backgroundColor: MyConstant.primary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: MyConstant.ligh,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: MyConstant.ligh,
          ),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: MyConstant.ligh,
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: MyConstant.ligh,
          ),
          label: 'Account',
        ),
      ],
    );
  }
}

//Source: 
// https://www.youtube.com/watch?v=qk-a_Qgc6b0&t=205s
