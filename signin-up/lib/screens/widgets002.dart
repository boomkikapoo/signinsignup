import 'package:flutter/material.dart';
import '../constant/my_constant.dart';

//Padding and Center, CircleAvatar

class Widgets002 extends StatelessWidget {
  const Widgets002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Center(
        child: CircleAvatar(
          foregroundColor: MyConstant.info,
          radius: 60.0,
          child: CircleAvatar(
            radius: 55.0,
            backgroundImage: NetworkImage('https://scontent.fbkk22-2.fna.fbcdn.net/v/t31.18172-8/14380129_1281703515181604_7706150979801080182_o.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG-Li3OfusdoZ4656xCxhARHNMcXRR4AhAc0xxdFHgCELYwoblNTNBonJIeJojPu5MA3y7iMvuLP8_b8y7DX6m3&_nc_ohc=btqdfmIIqCgAX8JRvyW&_nc_ht=scontent.fbkk22-2.fna&oh=00_AfAV2R3WUx8FMu7g3gp0cQ_WSr3ThoyztFvZBKAwTgQe0g&oe=64E4D55B'),
          ),
        ),
      ),
    );
  }
}
