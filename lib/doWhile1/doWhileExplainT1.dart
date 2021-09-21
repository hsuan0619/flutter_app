import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/doWhile1/doWhileExplain1_2.dart';
import 'package:untitled/doWhile2/doWhile2.dart';
int i=0;
String a='https://i.imgur.com/d8Qt5BR.png';

class doWhileExplainT1 extends StatefulWidget {
  @override
  _doWhileExplainT1State createState() => _doWhileExplainT1State();
}
class _doWhileExplainT1State extends State<doWhileExplainT1> {
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
            if(i==1) {
              a = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return doWhileExplain1_2();
                    }
                ),
              );
            }
            if(i==2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return doWhile2();
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