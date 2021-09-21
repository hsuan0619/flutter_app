import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/doWhile1/doWhile1.dart';

class toDoWhile extends StatefulWidget {
  @override
  _toDoWhileState createState() => _toDoWhileState();
}
class _toDoWhileState extends State<toDoWhile> {
  String a='https://i.imgur.com/InaYJZ2.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          talk(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.23,
            bottom : MediaQuery.of(context).size.height * 0.08,
            child:
            Image.network(
              a,
              width: MediaQuery.of(context).size.width * 0.68,
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
        child:
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return doWhile1();
                  }
              ),
            );
          },
          child:
          Image.network('https://i.imgur.com/8sotS2s.png'),
        ),
      ),
    );

  }
}