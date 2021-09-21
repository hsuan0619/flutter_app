import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/nest2/nestExplainT2.dart';

class nestExplain2_1f extends StatefulWidget {
  @override
  _nestExplain2_1fState createState() => _nestExplain2_1fState();
}
class _nestExplain2_1fState extends State<nestExplain2_1f> {
  String a='https://i.imgur.com/NKFcWJx.png';
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
                a='https://i.imgur.com/aIZROfn.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/vNMDNtB.png';
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/9K2anCP.png';
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/xpYBNzA.png';
              });
            }else if(i==5) {
              setState((){
                a='https://i.imgur.com/JZiB1fn.png';
              });
            }else if(i==6) {
              setState((){
                a='https://i.imgur.com/F2QYUCP.png';
              });
            }else if(i==7) {
              setState((){
                a='https://i.imgur.com/9GLDIFh.png';
              });
            }else if(i==8) {
              setState((){
                a='https://i.imgur.com/5ZB32FG.png';
              });
            }else if(i==9) {
              setState((){
                a='https://i.imgur.com/pgY21f0.png';
              });
            }else if(i==10) {
              setState((){
                a='https://i.imgur.com/GZJDq0O.png';
              });
            }else if(i==11) {
              setState((){
                a='https://i.imgur.com/T56V7gb.png';
              });
            }else if(i==12) {
              setState((){
                a='https://i.imgur.com/1kdXlJe.png';
              });
            }else if(i==13) {
              setState((){
                a='https://i.imgur.com/hUFGTsQ.png';
              });
            }else if(i==14) {
              setState((){
                a='https://i.imgur.com/jCOaThq.png';
              });
            }else if(i==15) {
              setState((){
                a='https://i.imgur.com/oi0YJzg.png';
              });
            }else if(i==16) {
              setState((){
                a='https://i.imgur.com/XJa8wzP.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return nestExplainT2();
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