import 'package:flutter/material.dart';
import 'package:flutter_beginner/constant/my_constant.dart';

// TextField

class Widgets015 extends StatefulWidget {
  const Widgets015({Key? key}) : super(key: key);

  @override
  State<Widgets015> createState() => _Widgets015State();
}

class _Widgets015State extends State<Widgets015> {
  final _textController = TextEditingController();

  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            // color: Colors.amber,
            width: 400,
            height: 50,
            child: Text(userPost),
          ),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'What\'s your name?',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  _textController.clear();
                },
                icon: Icon(
                  Icons.clear,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: MyConstant.primary,
            child: Text(
              'Post',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                userPost = _textController.text;
              });
            },
          ),
        ],
      ),
    );
  }
}
