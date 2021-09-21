import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/random/randomExplain1.dart';

class randomExplain extends StatefulWidget {
  @override
  _randomExplainState createState() => _randomExplainState();
}
class _randomExplainState extends State<randomExplain> {
  String a='https://i.imgur.com/4HPkuCi.png';
  int i=0;
  double b=0.08;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          talk(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.23,
            bottom : MediaQuery.of(context).size.height * b,
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
            if(i==0) {
              setState(() {
                a = 'https://i.imgur.com/JzqRNgl.png';
                b= 0.13;
              });
              i++;
            }
            else {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return randomExplain1();
                    }
                ),
              );
            }
          },
          child:
          Image.network('https://i.imgur.com/8sotS2s.png'),
        ),
      ),
    );

  }
}