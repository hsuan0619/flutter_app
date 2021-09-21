import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/for2/forExplainT2.dart';

class forExplain2_2f extends StatefulWidget {
  @override
  _forExplain2_2fState createState() => _forExplain2_2fState();
}
class _forExplain2_2fState extends State<forExplain2_2f> {
  String a='https://i.imgur.com/ybhVcLh.png';
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
                a='https://i.imgur.com/Tu1Cy7w.png';
                b=0.09;
              });
            }else if(i==2) {
              setState(() {
                a = 'https://i.imgur.com/NWA5Lp6.png';
              });
            }else if(i==3) {
              setState(() {
                a = 'https://i.imgur.com/wDMvTAk.png';
              });
            }else if(i==4) {
              setState(() {
                a = 'https://i.imgur.com/C5qKKdw.png';
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