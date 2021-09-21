import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/doWhile1/doWhileExplainT1.dart';

class doWhileExplain1_1f extends StatefulWidget {
  @override
  _doWhileExplain1_1fState createState() => _doWhileExplain1_1fState();
}
class _doWhileExplain1_1fState extends State<doWhileExplain1_1f> {
  String a='https://i.imgur.com/SiMUGVW.png';
  double b=0.13;
  int i=0;

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
              width: MediaQuery.of(context).size.width * 0.65,
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
        child:
        FloatingActionButton(
          onPressed: () {
            i++;
            if(i==1)
            {
              setState((){
                a='https://i.imgur.com/nWU4Y31.png';
                b=0.08;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/UvNn7u5.png';
                b=0.1;
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return doWhileExplainT1();
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