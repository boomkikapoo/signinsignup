import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'PageOne.dart';
import 'PageTwo.dart';
import 'PageThree.dart';
import 'PageMain.dart';

//Flutter cmd:
// smooth_page_indicator: ^1.1.0
// flutter pub add smooth_page_indicator
// smooth_page_indicator: ^1.1.0
// flutter pub get

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page we're on
  PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.horizontal, //left to right
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: [
            PageOne(),
            PageTwo(),
            PageThree(),
          ],
        ),
        Container(
          alignment: Alignment(0.0, 0.85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Text('Skip'),
                onTap: () {
                  _controller.jumpToPage(2);
                },
              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              onLastPage
                  ? GestureDetector(
                      child: Text('Done'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PageMain();
                            },
                          ),
                        );
                      },
                    )
                  : GestureDetector(
                      child: Icon(Icons.arrow_forward, size: 20, color: Colors.white,),
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                    )
            ],
          ),
        ),
      ],
    );
  }
}

// Source:
// https://www.youtube.com/watch?v=SG2WNlQfqyc&t=39s