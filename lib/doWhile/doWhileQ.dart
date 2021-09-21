import 'package:flutter/material.dart';
import 'package:untitled/background/question%20background.dart';
import 'package:untitled/doWhile/toFor.dart';

class doWhileQ extends StatefulWidget {
  @override
  _doWhileQState createState() => _doWhileQState();
}
class _doWhileQState extends State<doWhileQ> {
  String a='https://i.imgur.com/hv90Bts.png';
  double b=0.16;

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
                      return toFor();
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