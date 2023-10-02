import 'package:flutter/material.dart';
import 'pages/PageOne.dart';
import 'pages/PageTwo.dart';
import 'pages/PageThree.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          // scrollDirection: Axis.vertical, //top-buttom side
          scrollDirection: Axis.horizontal, //left-right side
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemCount: _pages.length,
          itemBuilder: (context, index) {
            return _pages[index % _pages.length]; //Mod 0/3= _page[0];
          },
        ),
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   height: 100,
        //   child: Container(
        //     color: Colors.black54,
        //     child: Text(_activePage.toString()),
        //   ),
        // ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 100,
          child: Container(
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                _pages.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      _pageController.animateToPage(index,
                          duration: const Duration(microseconds: 300),
                          curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 8,
                      // backgroundColor: Colors.red,
                      //Add active colors
                      backgroundColor: _activePage == index
                      ? Colors.amber
                      : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Source:
// https://www.google.com/search?q=page+view+flutter&oq=page+view&gs_lcrp=EgZjaHJvbWUqCQgBECMYJxiKBTIGCAAQRRg5MgkIARAjGCcYigUyBwgCEAAYgAQyBwgDEAAYgAQyBwgEEAAYgAQyBwgFEAAYgAQyBwgGEAAYgAQyBwgHEAAYgAQyBwgIEAAYgAQyBwgJEAAYgATSAQwzMzQ0MjM1ajBqMTWoAgCwAgA&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:f99d52d5,vid:uPaH7aJZs-M