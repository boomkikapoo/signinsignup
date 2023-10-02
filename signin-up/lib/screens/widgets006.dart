import 'package:flutter/material.dart';
import 'package:flutter_beginner/constant/my_constant.dart';

//Sizebox, Icon, Text

class Widgets006 extends StatelessWidget {
  const Widgets006({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 60,),
          Icon(Icons.home,color: MyConstant.info,),
          SizedBox(width: 5,),
          Text('Home', style: MyConstant().h2Style(),),
          SizedBox(width: 20,),
          Icon(Icons.person,color: MyConstant.info,),
          SizedBox(width: 5,),
          Text('Profile', style: MyConstant().h2Style(),),
          SizedBox(width: 20,),
          Icon(Icons.settings,color: MyConstant.info,),
          SizedBox(width: 5,),
          Text('Settings', style: MyConstant().h2Style(),),
        ],
      ),
    );
  }
}
