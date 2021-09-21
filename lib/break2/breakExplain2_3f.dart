import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/break2/breakExplainT2.dart';

class breakExplain2_3f extends StatefulWidget {
  @override
  _breakExplain2_3fState createState() => _breakExplain2_3fState();
}
class _breakExplain2_3fState extends State<breakExplain2_3f> {
  String a='https://i.imgur.com/NGkiVvW.png';
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
                a='https://i.imgur.com/V7BofZI.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/QG6bE6w.png';
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/s1mRQlh.png';
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/idR287L.png';
              });
            }else if(i==5) {
              setState((){
                a='https://i.imgur.com/xAQOA3F.png';
              });
            }else if(i==6) {
              setState((){
                a='https://i.imgur.com/hmPPGhO.png';
              });
            }else if(i==7) {
              setState((){
                a='https://i.imgur.com/yEmB99x.png';
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