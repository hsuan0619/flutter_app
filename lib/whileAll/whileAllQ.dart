import 'package:flutter/material.dart';
import 'package:untitled/background/question%20background.dart';
import 'package:untitled/whileAll/toArray.dart';

class whileAllQ extends StatefulWidget {
  @override
  _whileAllQState createState() => _whileAllQState();
}
class _whileAllQState extends State<whileAllQ> {
  String a='https://i.imgur.com/WF7B9O9.png';
  double b=0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          question(),
          //題目
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            bottom : MediaQuery.of(context).size.height * b,
            child:
            Image.network(
              a,
              width: MediaQuery.of(context).size.width * 0.78,
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
                      return toArray();
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