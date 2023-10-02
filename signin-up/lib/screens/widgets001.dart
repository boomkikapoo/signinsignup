import 'package:flutter/material.dart';
import '../constant/my_constant.dart';

//Container with Column

class Widgets001 extends StatelessWidget {
  const Widgets001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyConstant.primary,
      // child: Center(child: Text('Hello, My name is Tongpool Heeptaisong',style: MyConstant().h2Style(),)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.yellowAccent,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.lightBlue,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red.shade500,
          ),
        ],
      ),
    );
  }
}