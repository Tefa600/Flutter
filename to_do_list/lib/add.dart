import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/must_do.dart';

class ADD extends StatefulWidget {
  const ADD({Key key}) : super(key: key);

  @override
  _ADDState createState() => _ADDState();
}

class _ADDState extends State<ADD> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: TextField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Add To Do stuff',
            ),
            onSubmitted: (input) {
              setState(() {
                print(input);
                MustDo.stuff.add(input);
              });
            },
          ),
        ),
      ),
    );
  }
}
