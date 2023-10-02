import 'package:flutter/material.dart';

class Widgets005 extends StatelessWidget {
  const Widgets005({Key? key}) : super(key: key);

  //Center Text.rich

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
          text: 'Flutter ',
          children: [
            TextSpan(
              text: 'to the moon!',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
