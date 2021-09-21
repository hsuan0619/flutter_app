import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/break2/breakExplainT2.dart';

class breakExplain2_2f extends StatefulWidget {
  @override
  _breakExplain2_2fState createState() => _breakExplain2_2fState();
}
class _breakExplain2_2fState extends State<breakExplain2_2f> {
  String a='https://i.imgur.com/vVrNNNe.png';
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
                a='https://i.imgur.com/FEN2Vz5.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/YCGWBek.png';
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/Jmfhu2C.png';
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/NAwFAoo.png';
              });
            }else if(i==5) {
              setState((){
                a='https://i.imgur.com/fo9Xgaz.png';
              });
            }else if(i==6) {
              setState((){
                a='https://i.imgur.com/NANl1eG.png';
              });
            }else if(i==7) {
              setState((){
                a='https://i.imgur.com/nUdZUOO.png';
              });
            }else if(i==8) {
              setState((){
                a='https://i.imgur.com/dUjXXl2.png';
              });
            }else if(i==9) {
              setState((){
                a='https://i.imgur.com/pNpA8Xj.png';
              });
            }else if(i==10) {
              setState((){
                a='https://i.imgur.com/PxuPcXT.png';
              });
            }else if(i==11) {
              setState((){
                a='https://i.imgur.com/PSSrOD7.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return breakExplainT2();
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