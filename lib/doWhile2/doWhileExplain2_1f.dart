import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/doWhile2/doWhileExplainT2.dart';

class doWhileExplain2_1f extends StatefulWidget {
  @override
  _doWhileExplain2_1fState createState() => _doWhileExplain2_1fState();
}
class _doWhileExplain2_1fState extends State<doWhileExplain2_1f> {
  String a='https://i.imgur.com/GQwBMTB.png';
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
                a='https://i.imgur.com/S6KZ443.png';
                b=0.09;
              });
            }else if(i==2) {
              setState(() {
                a = 'https://i.imgur.com/CyfsJhc.png';
              });
            }else if(i==3){
              setState(() {
                a = 'https://i.imgur.com/NumlMfL.png';
              });
            }else if(i==4){
              setState(() {
                a = 'https://i.imgur.com/I8xg2hV.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return doWhileExplainT2();
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