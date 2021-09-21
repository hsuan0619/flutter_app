import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/doWhile2/doWhileExplain2_3.dart';
import 'package:untitled/doWhile2/doWhileExplain2_2.dart';
import 'package:untitled/doWhile/doWhileToEclipse.dart';
String c='https://i.imgur.com/d8Qt5BR.png';
int i=0;

class doWhileExplainT2 extends StatefulWidget {
  @override
  _doWhileExplainT2State createState() => _doWhileExplainT2State();
}
class _doWhileExplainT2State extends State<doWhileExplainT2> {

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
              c,
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
            if(i==1){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return doWhileExplain2_2();
                    }
                ),
              );
            }
            if(i==2) {
              c = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return doWhileExplain2_3();
                    }
                ),
              );
            }
            if(i==3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return doWhileToEclipse();
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