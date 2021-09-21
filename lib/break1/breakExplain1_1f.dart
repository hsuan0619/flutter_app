import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/break1/breakExplainT1.dart';

class breakExplain1_1f extends StatefulWidget {
  @override
  _breakExplain1_1fState createState() => _breakExplain1_1fState();
}
class _breakExplain1_1fState extends State<breakExplain1_1f> {
  String a='https://i.imgur.com/C7u7wMB.png';
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
                a='https://i.imgur.com/xfsm5Zw.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/wiquIGB.png';
                b=0.09;
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/EwmQ7iC.png';
                b=0.09;
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/9AzXkDB.png';
                b=0.09;
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return breakExplainT1();
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