import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/for2/forExplainT2.dart';

class forExplain2_3f extends StatefulWidget {
  @override
  _forExplain2_3fState createState() => _forExplain2_3fState();
}
class _forExplain2_3fState extends State<forExplain2_3f> {
  String a='https://i.imgur.com/gjalhE6.png';
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
                a='https://i.imgur.com/s0qUKBK.png';
                b=0.09;
              });
            }else if(i==2) {
              setState(() {
                a = 'https://i.imgur.com/uiB8kDr.png';
              });
            }else if(i==3) {
              setState(() {
                a = 'https://i.imgur.com/3dH0kGU.png';
              });
            }else if(i==4) {
              setState(() {
                a = 'https://i.imgur.com/nQCJWuh.png';
              });
            }else if(i==5) {
              setState(() {
                a = 'https://i.imgur.com/gNKlhjU.png';
              });
            }else if(i==6) {
              setState(() {
                a = 'https://i.imgur.com/YOBDRPA.png';
              });
            }else if(i==7) {
              setState(() {
                a = 'https://i.imgur.com/cPrOQHx.png';
              });
            }else if(i==8) {
              setState(() {
                a = 'https://i.imgur.com/Ci8fSXp.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return forExplainT2();
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